package mx.redpoint.isa.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.sql.rowset.serial.SerialBlob;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import mx.redpoint.isa.bean.Adeudos;
import mx.redpoint.isa.bean.Comentario;
import mx.redpoint.isa.bean.Condominios;
import mx.redpoint.isa.bean.Finanzas;
import mx.redpoint.isa.bean.Iegresos;
import mx.redpoint.isa.bean.Mail;
import mx.redpoint.isa.bean.Pagos;
import mx.redpoint.isa.bean.Vecino;
import mx.redpoint.isa.client.CondominiosClient;
import mx.redpoint.isa.client.IegresosClient;
import mx.redpoint.isa.util.BlobUtil;

import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.w3c.dom.Document;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.common.util.RandomValueStringGenerator;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;

@RestController
@MultipartConfig
@RequestMapping(value="/services")
public class MiCitaTelcelRestController {
    
	//datos falsos
	private ArrayList<Vecino> vecinosFalsos = new ArrayList<Vecino>();
//	private ArrayList<Iegresos> iegresosFalsos = new ArrayList<Iegresos>();
	
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
	public ModelAndView resumen(HttpServletRequest request) {
		
		ModelAndView model = new ModelAndView("resumen");
		Finanzas[] finan;
		String nameRegulation = request.getParameter("regulation");
		Condominios condo = new Condominios();
		condo.setCity(request.getParameter("city"));
		condo.setColony(request.getParameter("colony"));
		condo.setCountry(request.getParameter("country"));
		condo.setCp(request.getParameter("cp"));
		condo.setRegulation(request.getParameter("filebase64"));
//		System.out.println(condo.getArchivo());
		condo.setPhoto(request.getParameter("photobase64"));
		condo.setName1(request.getParameter("name1"));
		System.out.println(condo.getName1());
		condo.setNumber(request.getParameter("number"));
		condo.setPhone(request.getParameter("phone"));
		condo.setStreet(request.getParameter("street"));
		condo.setWeb(request.getParameter("web"));
		//condo.setFile(file);
		// Map parameterMap = request.getParameterMap();
		int max = Integer.parseInt(request.getParameter("contador"));
		System.out.println("xxxxx:"+max);
		finan = new Finanzas[max];
		for (int i = 0; i < max; i++) {
			finan[i] = new Finanzas();
			String alias = request.getParameter("alias" + (i+1));
			String tipo = request.getParameter("tipo" + (i+1));
			Double montoinicial = Double.parseDouble(request.getParameter("montoinicial" + (i+1)));
			String numerocuenta = request.getParameter("numerocuenta" + (i+1));
			String numerotarjeta = request.getParameter("numerotarjeta" + (i+1));
			String numeroclabe = request.getParameter("numeroclabe" + (i+1));
			finan[i].setAlias(alias);
			finan[i].setTipo(tipo);
			finan[i].setMontoinicial(montoinicial);
			finan[i].setNumerocuenta(numerocuenta);
			finan[i].setNumerotarjeta(numerotarjeta);
			finan[i].setNumeroclabe(numeroclabe);
		}
		condo.setFinanzas(finan);
		String cuotamensual = request.getParameter("cuotamensual");
		model.addObject("nameRegulation", nameRegulation);
		model.addObject("condominio", condo);
		model.addObject("cuotamensual", cuotamensual);
		model.addObject("finanzas", finan);
		return model;
	}

	@RequestMapping(value = "/auth/condominios", method = RequestMethod.GET)
	public ModelAndView condominios(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("condominios");
		Condominios condominios = CondominiosClient.getCondominioClient(); 
		model.addObject("condominios", condominios);
		return model;
	}

	@RequestMapping(value = "/auth/altavecinos", method = RequestMethod.GET)
	public ModelAndView altavecinos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("altavecinos");
		return model;
	}
	
	@RequestMapping(value = "/auth/agregarmail", method = RequestMethod.POST)
	public ModelAndView agregarmail(HttpServletRequest request) {
		Mail mail = new Mail();
		String correo = request.getParameter("correoInvite");
		System.out.println(correo);
		mail.setCorreo(correo);
		ModelAndView model = new ModelAndView("agregarmail");
		model.addObject("mail1", mail);
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
		Iegresos iegresos = IegresosClient.getIegresoClient(); 
		model.addObject("iegresos", iegresos);
		return model;
	}
	
//	@RequestMapping(value = "/auth/datosFinanzas", method = RequestMethod.GET, produces = "application/json")
//	public String datosFinanzas(HttpServletRequest request) {
//		ObjectMapper mapper = new ObjectMapper();
//		String fechaIegresos = request.getParameter("fecha");
//		Iegresos iegresosActual = new Iegresos();
//		String iegresosString = "";
//		//datos falsos
//		for(Iegresos iegresos : iegresosFalsos) {
//			if(iegresos.getFecha().equals( fechaIegresos )){
//				iegresosActual = iegresos;
//			}
//		}
//		
//		try {
//			iegresosString = mapper.writeValueAsString(iegresosActual);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		return iegresosString;
//	}
	
//	@RequestMapping(value = "/auth/cuadroie", method = RequestMethod.GET)
//	public ModelAndView cuadroie(HttpServletRequest request) {
//		generaDatosIegresos();
//		String tipo = request.getParameter("tipo");
//		ArrayList<Iegresos> respuesta = new ArrayList<Iegresos>();
//		if (tipo.equals("todos")) {
//			respuesta.addAll(ingresosFalsos);
//			respuesta.addAll(egresosFalsos);
//		}else if(tipo.equals("ingresos")) {
//			respuesta.addAll(ingresosFalsos);
//		}else if(tipo.equals("egresos")) {
//			respuesta.addAll(egresosFalsos);
//		}
//		ModelAndView model = new ModelAndView("cuadroie");
//		model.addObject("registros",respuesta);
//		return model;
//	}
//
//	@RequestMapping(value = "/auth/cuadroie", method = RequestMethod.POST)
//	public ModelAndView insertaie(HttpServletRequest request) {
//		generaDatosIegresos();
//		String tipo = request.getParameter("tipo");
//		ArrayList<Iegresos> respuesta = new ArrayList<Iegresos>();
//		if(tipo.equals("ingresos")) {
//			String cuentaIngreso = request.getParameter("cuenta-ingreso");
//			String conceptoIngreso = request.getParameter("concepto-ingreso");
//			String remitenteIngreso = request.getParameter("remitente-ingreso");
//			String fechaIngreso = request.getParameter("fecha-ingreso");
//			String cantidadIngreso = request.getParameter("cantidad-ingreso");
//			Iegresos nuevoDato = new Iegresos();
//			nuevoDato.setFecha(new Date(fechaIngreso));
//			nuevoDato.setConcepto(conceptoIngreso);
//			nuevoDato.setCantidad(cantidadIngreso);
//			nuevoDato.setCuenta(cuentaIngreso);
//			nuevoDato.setRemitente(remitenteIngreso);
//			
//			//agregar comprobante
//			respuesta.addAll(ingresosFalsos);
//			respuesta.add(nuevoDato);
//		}else if(tipo.equals("egresos")) {
//			respuesta.addAll(egresosFalsos);
//		}
//		ModelAndView model = new ModelAndView("cuadroie");
//		model.addObject("registros",respuesta);
//		return model;
//	}
	
	@RequestMapping(value = "/auth/agendavecinos", method = RequestMethod.GET)
	public ModelAndView agendavecinos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("agendavecinos");
		generaDatosVecino();
		model.addObject("vecinos", vecinosFalsos);
		return model;
	}

	@RequestMapping(value = "/auth/datosAgendavecinos", method = RequestMethod.GET, produces = "application/json")
	public String datosAgendavecinos(HttpServletRequest request) {
		ObjectMapper mapper = new ObjectMapper();
		String nombreVecino = request.getParameter("nombre");
		Vecino vecinoActual = new Vecino();
		String vecinoString = "";
		//datos falsos
		for(Vecino vecino : vecinosFalsos) {
			if(vecino.getNombre().equals( nombreVecino )){
				vecinoActual = vecino;
			}
		}
		
		try {
			vecinoString = mapper.writeValueAsString(vecinoActual);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vecinoString;
	}
	
	@RequestMapping(value = "/auth/avisos", method = RequestMethod.GET)
	public ModelAndView avisos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("avisos");
		return model;
	}
	
	@RequestMapping(value = "/auth/agregarcom", method = RequestMethod.POST)
	public ModelAndView agregarcom(HttpServletRequest request) {
		Comentario comentario = new Comentario();
		String cuerpo = request.getParameter("textCom");
		System.out.println(cuerpo);
		Date fecha = new Date();
		comentario.setBody(cuerpo);
		comentario.setDate(fecha);
		comentario.setIdUser("Henry Zapata");
		ModelAndView model = new ModelAndView("agregarcom");
		model.addObject("comment", comentario);
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
	
	@RequestMapping(value = "/auth/cuadroconfig", method = RequestMethod.GET)
	public ModelAndView cuadroconfig(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("cuadroconfig");
		int num = Integer.parseInt(request.getParameter("num"));
		model.addObject("num", num);
		return model;
	}

	private void generaDatosVecino() {//TODELETE
		vecinosFalsos.clear();
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
		pago2.setFecha(new Date("28/04/18"));
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
		adeu2.setFecha(new Date());
		adeu2.setConcepto("Mensualidad");
		adeu2.setCantidad(5000.0);
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
		
		vecinosFalsos.add(vecino1);
		vecinosFalsos.add(vecino2);
		vecinosFalsos.add(vecino3);
	}
	
//	private void generaDatosIegresos() {//TODELETE
//		ingresosFalsos.clear();
//		egresosFalsos.clear();
//		Iegresos ingreso1 = new Iegresos();
//		Iegresos ingreso2 = new Iegresos();
//		Iegresos ingreso3 = new Iegresos();
//		Iegresos ingreso4 = new Iegresos();
//		Iegresos ingreso5 = new Iegresos();
//		Iegresos egreso1 = new Iegresos();
//		Iegresos egreso2 = new Iegresos();
//		Iegresos egreso3 = new Iegresos();
//		ingreso1.setFecha(new Date("04/30/2018"));
//		ingreso1.setConcepto("Cuota mensual Henry Zapata");
//		ingreso1.setCantidad("$8000.00");
//		ingreso1 = new Iegresos();
//		
//		ingreso2.setFecha(new Date("04/29/2018"));
//		ingreso2.setConcepto("Cuota mensual Montserrat Casillas");
//		ingreso2.setCantidad("$8000.00");
//		
//		ingreso3.setFecha(new Date("04/28/2018"));
//		ingreso3.setConcepto("Cuota mensual Alexis Negrete");
//		ingreso3.setCantidad("$8000.00");
//		
//		egreso1.setFecha(new Date("04/27/2018"));
//		egreso1.setConcepto("Servicio de luz");
//		egreso1.setCantidad("$2500.00");
//		
//		egreso2.setFecha(new Date("04/20/2018"));
//		egreso2.setConcepto("Servicio de agua");
//		egreso2.setCantidad("$2500.00");
//		
//		egreso3.setFecha(new Date("04/15/2018"));
//		egreso3.setConcepto("Bacheado de calle");
//		egreso3.setCantidad("$4800.00");
//		
//		ingreso4.setFecha(new Date("04/01/2018"));
//		ingreso4.setConcepto("Alta tarjeta de crédito");
//		ingreso4.setCantidad("$40000.00");
//		
//		ingreso5.setFecha(new Date("04/01/2018"));
//		ingreso5.setConcepto("Alta caja chica");
//		ingreso5.setCantidad("$16500.00");
//		
//		ingresosFalsos.add(ingreso1);
//		ingresosFalsos.add(ingreso2);
//		ingresosFalsos.add(ingreso3);
//		ingresosFalsos.add(ingreso4);
//		ingresosFalsos.add(ingreso5);
//		
//		egresosFalsos.add(egreso1);
//		egresosFalsos.add(egreso2);
//		egresosFalsos.add(egreso3);
//
//		
//		
//	}

	
}
