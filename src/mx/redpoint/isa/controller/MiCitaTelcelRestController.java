package mx.redpoint.isa.controller;

import java.io.IOException;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import mx.redpoint.isa.bean.Finanzas;
import mx.redpoint.isa.bean.Pagos;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.common.util.RandomValueStringGenerator;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;

@RestController
@RequestMapping(value="/services")
public class MiCitaTelcelRestController {
    
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

	@RequestMapping(value = "/mpago", method = RequestMethod.GET)
	public ModelAndView mpago(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("mpago");
		return model;
	}

	@RequestMapping(value = "registrocon", method = RequestMethod.GET)
	public ModelAndView registrocon(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("registrocon");
		return model;
	}

	@RequestMapping(value = "finanzascon", method = RequestMethod.GET)
	public ModelAndView finanzascon(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("finanzascon");
		return model;
	}

	@RequestMapping(value = "/cuadrofinanzas", method = RequestMethod.GET)
	public ModelAndView cuadrofinanzas(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("cuadrofinanzas");
		int num = Integer.parseInt(request.getParameter("num"));
		model.addObject("num", num);
		return model;
	}

	@RequestMapping(value = "resumen", method = RequestMethod.POST)
	public ModelAndView resumen(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("resumen");
		ArrayList<Finanzas> cuadros = new ArrayList<Finanzas>();
		Finanzas finan = new Finanzas();
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
		model.addObject("cuotamensual", cuotamensual);
		model.addObject("cuadros", cuadros);
		return model;
	}

	@RequestMapping(value = "/condominios", method = RequestMethod.GET)
	public ModelAndView condominios(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("condominios");
		return model;
	}

	@RequestMapping(value = "/altavecinos", method = RequestMethod.GET)
	public ModelAndView altavecinos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("altavecinos");
		return model;
	}

	@RequestMapping(value = "/principal", method = RequestMethod.GET)
	public ModelAndView principal(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("principal");
		return model;
	}
	
	@RequestMapping(value = "/finanzas", method = RequestMethod.GET)
	public ModelAndView finanzas(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("finanzas");
		return model;
	}

	@RequestMapping(value = "/agendavecinos", method = RequestMethod.GET)
	public ModelAndView agendavecinos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("agendavecinos");
		return model;
	}

	@RequestMapping(value = "/datosAgendavecinos", method = RequestMethod.GET, produces = "application/json")
	public String datosAgendavecinos(HttpServletRequest request) {
		JSONObject jsonString = new JSONObject();
		String vecino = request.getParameter("nombre");

		// datos falsos (Dummy)
		Pagos dato1 = new Pagos();
		dato1.setCantidad(50000.30);
		dato1.setConcepto("cuota mensual abril");
		dato1.setFecha(new Date());
		dato1.setVecino(vecino);

		Pagos dato2 = new Pagos();
		dato2.setCantidad(50000.30);
		dato2.setConcepto("cuota mensual abril");
		dato2.setFecha(new Date());
		dato2.setVecino(vecino);

		Pagos dato3 = new Pagos();
		dato3.setCantidad(50000.30);
		dato3.setConcepto("cuota mensual abril");
		dato3.setFecha(new Date());
		dato3.setVecino(vecino);

		List<Object> adeudos = new ArrayList<Object>();
		adeudos.add(dato1);
		adeudos.add(dato2);
		adeudos.add(dato3);

		JSONArray jsArray = new JSONArray(adeudos);
		jsonString.put("pagos", jsArray);
		jsonString.put("vecino", vecino);

		return jsonString.toString();
	}
	
	@RequestMapping(value = "/avisos", method = RequestMethod.GET)
	public ModelAndView avisos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("avisos");
		return model;
	}
	
	@RequestMapping(value = "/notificaciones", method = RequestMethod.GET)
	public ModelAndView notificaciones(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("notificaciones");
		return model;
	}
	
	@RequestMapping(value = "/perfilusuario", method = RequestMethod.GET)
	public ModelAndView perfilusuario(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("perfilusuario");
		return model;
	}
	
	@RequestMapping(value = "/reglamento", method = RequestMethod.GET)
	public ModelAndView reglamento(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("reglamento");
		return model;
	}
	
	@RequestMapping(value = "/terminos", method = RequestMethod.GET)
	public ModelAndView terminos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("terminos");
		return model;
	}
	
	@RequestMapping(value = "/configinmueble", method = RequestMethod.GET)
	public ModelAndView configinmueble(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("configinmueble");
		return model;
	}

}
