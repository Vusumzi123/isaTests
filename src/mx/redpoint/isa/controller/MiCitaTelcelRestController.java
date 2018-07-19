package mx.redpoint.isa.controller;

import java.io.IOException;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.sql.rowset.serial.SerialBlob;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import mx.redpoint.isa.bean.Adeudos;
import mx.redpoint.isa.bean.Condominios;
import mx.redpoint.isa.bean.Finanzas;
import mx.redpoint.isa.bean.Pagos;
import mx.redpoint.isa.bean.Vecino;
import mx.redpoint.isa.util.BlobUtil;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Document;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.common.util.RandomValueStringGenerator;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;

@RestController
@RequestMapping(value="/services")
public class MiCitaTelcelRestController {
    
	//datos falsos
	private Vecino[] vecinosFalsos;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView helloWorld(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("home");
		return model;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("login");
		return model;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("register");
		return model;
	}

	@RequestMapping(value = "/router", method = RequestMethod.POST)
	public String router(HttpServletRequest request) {
		// ModelAndView model = new ModelAndView("confirm");
		return "redirect:/confirm";
	}

	@RequestMapping(value = "/confirm", method = RequestMethod.POST)
	public ModelAndView confirm(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("confirm");
		String email = request.getParameter("email");
		model.addObject("email", email);
		return model;
	}

	@RequestMapping(value = "/auth/mpago", method = RequestMethod.GET)
	public ModelAndView mpago(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("mpago");
		return model;
	}

	@RequestMapping(value = "/auth/registrocon", method = RequestMethod.GET)
	public ModelAndView registrocon(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("registrocon");
		return model;
	}

	@RequestMapping(value = "/auth/finanzascon", method = RequestMethod.GET)
	public ModelAndView finanzascon(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("finanzascon");
		return model;
	}

	@RequestMapping(value = "/auth/cuadrofinanzas", method = RequestMethod.GET)
	public ModelAndView cuadrofinanzas(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("cuadrofinanzas");
		int num = Integer.parseInt(request.getParameter("num"));
		model.addObject("num", num);
		return model;
	}

	@RequestMapping(value = "/auth/resumen", method = RequestMethod.POST)
	public ModelAndView resumen(HttpServletRequest request,
			@RequestParam(value="archivo", required=false) CommonsMultipartFile archivo,
			//@RequestParam(value="foto", required=true) CommonsMultipartFile foto,
			MultipartHttpServletRequest mrequest) {
		
		ModelAndView model = new ModelAndView("resumen");
		ArrayList<Finanzas> cuadros = new ArrayList<Finanzas>();
		Finanzas finan = new Finanzas();
		Condominios condo = new Condominios();
		condo.setCity(request.getParameter("city"));
		condo.setColonia(request.getParameter("colonia"));
		condo.setCountry(request.getParameter("country"));
		condo.setCp(request.getParameter("cp"));
		condo.setArchivo(BlobUtil.partFile2Blob(archivo));
		System.out.println(condo.getArchivo());
		//condo.setFoto(BlobUtil.partFile2Blob(foto));
		condo.setName1(request.getParameter("name1"));
		System.out.println("XXXXXXXXX:");
		System.out.println(condo.getName1());
		condo.setNumber(request.getParameter("number"));
		condo.setPhone(request.getParameter("phone"));
		condo.setStreet(request.getParameter("street"));
		condo.setWeb(request.getParameter("web"));
		//condo.setFile(file);
		// Map parameterMap = request.getParameterMap();
		int max = Integer.parseInt(request.getParameter("contador"));
		for (int i = 1; i <= max; i++) {
			String alias = request.getParameter("alias" + (i));
			String tipo = request.getParameter("tipo" + (i));
			String montoinicial = request.getParameter("montoinicial" + (i));
			String numerocuenta = request.getParameter("numerocuenta" + (i));
			String numerotarjeta = request.getParameter("numerotarjeta" + (i));
			String numeroclabe = request.getParameter("numeroclabe" + (i));
			finan.setAlias(alias);
			finan.setTipo(tipo);
			finan.setMontoinicial(montoinicial);
			finan.setNumerocuenta(numerocuenta);
			finan.setNumerotarjeta(numerotarjeta);
			finan.setNumeroclabe(numeroclabe);
			cuadros.add(finan);
		}
		String cuotamensual = request.getParameter("cuotamensual");
		model.addObject("condominio", condo);
		model.addObject("cuotamensual", cuotamensual);
		model.addObject("cuadros", cuadros);
		return model;
	}

	@RequestMapping(value = "/auth/condominios", method = RequestMethod.GET)
	public ModelAndView condominios(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("condominios");
		return model;
	}

	@RequestMapping(value = "/auth/altavecinos", method = RequestMethod.GET)
	public ModelAndView altavecinos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("altavecinos");
		return model;
	}

	@RequestMapping(value = "/auth/principal", method = RequestMethod.GET)
	public ModelAndView principal(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("principal");
		return model;
	}
	
	@RequestMapping(value = "/auth/finanzas", method = RequestMethod.GET)
	public ModelAndView finanzas(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("finanzas");
		return model;
	}

	@RequestMapping(value = "/auth/agendavecinos", method = RequestMethod.GET)
	public ModelAndView agendavecinos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("agendavecinos");
		GeneraDatosVecino();
		
		model.addObject("vecinos", vecinosFalsos);
		return model;
	}

	@RequestMapping(value = "/auth/datosAgendavecinos", method = RequestMethod.GET, produces = "application/json")
	public String datosAgendavecinos(HttpServletRequest request) {
		JSONObject jsonString = new JSONObject();
		String nombreVecino = request.getParameter("nombre");
		Vecino vecinoActual = new Vecino();
		//datos falsos
		for(Vecino vecino : vecinosFalsos) {
			if(vecino.getNombre().equals( nombreVecino )){
				vecinoActual = vecino;
			}
		}
		
		jsonString.put("vecino", vecinoActual);

		return jsonString.toString();
	}
	
	@RequestMapping(value = "/auth/avisos", method = RequestMethod.GET)
	public ModelAndView avisos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("avisos");
		return model;
	}
	
	@RequestMapping(value = "/auth/notificaciones", method = RequestMethod.GET)
	public ModelAndView notificaciones(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("notificaciones");
		return model;
	}
	
	@RequestMapping(value = "/auth/perfilusuario", method = RequestMethod.GET)
	public ModelAndView perfilusuario(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("perfilusuario");
		return model;
	}
	
	@RequestMapping(value = "/auth/reglamento", method = RequestMethod.GET)
	public ModelAndView reglamento(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("reglamento");
		return model;
	}
	
	@RequestMapping(value = "/auth/terminos", method = RequestMethod.GET)
	public ModelAndView terminos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("terminos");
		return model;
	}
	
	@RequestMapping(value = "/auth/configinmueble", method = RequestMethod.GET)
	public ModelAndView configinmueble(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("configinmueble");
		return model;
	}

	private void GeneraDatosVecino() {
		Vecino vecino1 = new Vecino();
		Vecino vecino2 = new Vecino();
		Vecino vecino3 = new Vecino();
		vecino1.setNombre("Henry");
		vecino1.setApellido("Zapata");
		vecino1.setCorreo("h.zapata@supaada.mx");
		vecino1.setVivienda("101");
		ArrayList<Pagos> pagos = new ArrayList<Pagos>();
		ArrayList<Adeudos> adeudos = new ArrayList<Adeudos>();
		Pagos pago1 = new Pagos();
		Pagos pago2 = new Pagos();
		pago1.setFecha(new Date());
		pago1.setConcepto("Mensualidad");
		pago1.setCantidad(6000.0);
		pago2.setFecha(new Date());
		pago2.setConcepto("Mensualidad");
		pago2.setCantidad(6000.0);
		pagos.add(pago1);
		pagos.add(pago2);
		Adeudos adeu1 = new Adeudos();
		adeu1.setFecha(new Date());
		adeu1.setConcepto("Mensualidad");
		adeu1.setCantidad(6000.0);
		adeudos.add(adeu1);
		vecino1.setPagos( pagos );
		vecino1.setAdeudos(adeudos);
		
		vecino2.setNombre("Montserrat");
		vecino2.setApellido("Casillas");
		vecino2.setCorreo("m.casillas@supaada.mx");
		vecino2.setVivienda("105");
		ArrayList<Pagos> pagos1 = new ArrayList<Pagos>();
		ArrayList<Adeudos> adeudos1 = new ArrayList<Adeudos>();
		Pagos pago3 = new Pagos();
		Pagos pago4 = new Pagos();
		pago3.setFecha(new Date());
		pago3.setConcepto("Mensualidad");
		pago3.setCantidad(5000.0);
		pago4.setFecha(new Date());
		pago4.setConcepto("Mensualidad");
		pago4.setCantidad(5000.0);
		pagos1.add(pago3);
		pagos1.add(pago4);
		Adeudos adeu2 = new Adeudos();
		adeu1.setFecha(new Date());
		adeu1.setConcepto("Mensualidad");
		adeu1.setCantidad(5000.0);
		adeudos1.add(adeu2);
		vecino2.setPagos( pagos1 );
		vecino2.setAdeudos(adeudos1);
		
		vecino3.setNombre("Alexis");
		vecino3.setApellido("Negrete");
		vecino3.setCorreo("a.negrete@supaada.mx");
		vecino3.setVivienda("103");
		ArrayList<Pagos> pagos2 = new ArrayList<Pagos>();
		ArrayList<Adeudos> adeudos2 = new ArrayList<Adeudos>();
		Pagos pago5 = new Pagos();
		Pagos pago6 = new Pagos();
		pago5.setFecha(new Date());
		pago5.setConcepto("Mensualidad");
		pago5.setCantidad(8000.0);
		pago6.setFecha(new Date());
		pago6.setConcepto("Mensualidad");
		pago6.setCantidad(8000.0);
		pagos2.add(pago5);
		pagos2.add(pago6);
		Adeudos adeu3 = new Adeudos();
		adeu3.setFecha(new Date());
		adeu3.setConcepto("Mensualidad");
		adeu3.setCantidad(8000.0);
		adeudos2.add(adeu3);
		vecino3.setPagos( pagos2 );
		vecino3.setAdeudos(adeudos2);
		
		
		
	}
}
