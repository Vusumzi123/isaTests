package mx.redpoint.isa.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import mx.redpoint.isa.bean.Finanzas;

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
	public ModelAndView helloWorld(HttpServletRequest request){
		ModelAndView model = new ModelAndView("home");		
		return model;
	}
	
	@RequestMapping(value = "/landing", method = RequestMethod.GET)
	public ModelAndView landing(HttpServletRequest request){
		ModelAndView model = new ModelAndView("landing");		
		return model;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request){
		ModelAndView model = new ModelAndView("login");		
		return model;
	}
	
		@RequestMapping(value = "/register", method = RequestMethod.GET)
		public ModelAndView register(HttpServletRequest request){
			ModelAndView model = new ModelAndView("register");		
			return model;
	}
		
		@RequestMapping(value = "/router", method = RequestMethod.POST)
		public String router(HttpServletRequest request){
			//ModelAndView model = new ModelAndView("confirm");		
			return "redirect:/confirm";
	}
		
		@RequestMapping(value = "/confirm", method = RequestMethod.POST)
		public ModelAndView confirm(HttpServletRequest request){
			ModelAndView model = new ModelAndView("confirm");
			String email = request.getParameter("email");
			model.addObject("email", email);
			return model;
	}
		@RequestMapping(value = "/mpago", method = RequestMethod.GET)
		public ModelAndView mpago(HttpServletRequest request){
			ModelAndView model = new ModelAndView("mpago");		
			return model;
	}
		
		@RequestMapping(value = "registrocon", method = RequestMethod.GET)
		public ModelAndView registrocon(HttpServletRequest request){
			ModelAndView model = new ModelAndView("registrocon");		
			return model;
	}
		
		@RequestMapping(value = "finanzascon", method = RequestMethod.GET)
		public ModelAndView finanzascon(HttpServletRequest request){
			ModelAndView model = new ModelAndView("finanzascon");		
			return model;
	}
		
		@RequestMapping(value = "/cuadrofinanzas", method = RequestMethod.GET)
		public ModelAndView cuadrofinanzas(HttpServletRequest request){
			ModelAndView model = new ModelAndView("cuadrofinanzas");
			int num = Integer.parseInt( request.getParameter("num"));
			model.addObject("num",num);
			return model;
	}
		
		@RequestMapping(value = "resumen", method = RequestMethod.POST)
		public ModelAndView resumen(HttpServletRequest request){
			ModelAndView model = new ModelAndView("resumen");
			ArrayList<Finanzas> cuadros=new ArrayList<Finanzas>();
		Finanzas finan = new Finanzas ();	
			//Map parameterMap = request.getParameterMap();
			int max = Integer.parseInt( request.getParameter("contador") );
			for (int i = 1; i <= max; i++) {
				String alias= request.getParameter("alias"+(i));
				String tipo= request.getParameter("tipo"+(i));
				String montoinicial= request.getParameter("montoinicial"+(i));
				String numerocuenta= request.getParameter("numerocuenta"+(i));
				String numerotarjeta= request.getParameter("numerotarjeta"+(i));
				String numeroclabe= request.getParameter("numeroclabe"+(i));
				finan.setAlias(alias);
				finan.setTipo(tipo);
				finan.setMontoinicial(montoinicial);
				finan.setNumerocuenta(numerocuenta);
				finan.setNumerotarjeta(numerotarjeta);
				finan.setNumeroclabe(numeroclabe);
				cuadros.add(finan);
			}
			String cuotamensual=request.getParameter("cuotamensual");
			model.addObject("cuotamensual",cuotamensual);
			model.addObject("cuadros",cuadros);
			return model;
	}
		
		@RequestMapping(value = "condominios", method = RequestMethod.GET)
		public ModelAndView condominios(HttpServletRequest request){
			ModelAndView model = new ModelAndView("condominios");		
			return model;
	}
		
		@RequestMapping(value = "/altavecinos", method = RequestMethod.GET)
		public ModelAndView altavecinos(HttpServletRequest request){
			ModelAndView model = new ModelAndView("altavecinos");		
			return model;
	}

}
