package mx.redpoint.isa.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import mx.redpoint.isa.bean.Adeudos;
import mx.redpoint.isa.bean.Avisos;
import mx.redpoint.isa.bean.Comentario;
import mx.redpoint.isa.bean.Condominios;
import mx.redpoint.isa.bean.Egresos;
import mx.redpoint.isa.bean.Finanzas;
import mx.redpoint.isa.bean.Iegresos;
import mx.redpoint.isa.bean.Ingresos;
import mx.redpoint.isa.bean.Mail;
import mx.redpoint.isa.bean.Pagos;
import mx.redpoint.isa.bean.Principaladmins;
import mx.redpoint.isa.bean.Principalvecinos;
import mx.redpoint.isa.bean.Usuario;
import mx.redpoint.isa.bean.Vecinos;
import mx.redpoint.isa.client.AvisosClient;
import mx.redpoint.isa.client.ComentarioClient;
import mx.redpoint.isa.client.CondominiosClient;
import mx.redpoint.isa.client.CuentasClient;
import mx.redpoint.isa.client.EgresosClient;
import mx.redpoint.isa.client.FinanzasClient;
import mx.redpoint.isa.client.IngresosClient;
import mx.redpoint.isa.client.PrincipaladminsClient;
import mx.redpoint.isa.client.PrincipalvecinosClient;
import mx.redpoint.isa.client.VecinosClient;
import mx.redpoint.isa.util.BlobUtil;

import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.common.util.RandomValueStringGenerator;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;

@RestController
@RequestMapping(value = "/services")
public class MiCitaTelcelRestController {

	private final static Logger LOGGER = Logger.getLogger(MiCitaTelcelRestController.class.getName());

	private ArrayList<Vecinos> vecinosLista = new ArrayList<Vecinos>();

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

	/*
	 * 
	 * Metodo que redirecciona al controlador correspondiente al detectar el rol del
	 * usuario
	 * 
	 */
	@RequestMapping(value = "/auth/role", method = RequestMethod.GET)
	public ModelAndView role(HttpServletRequest request) {
		Set<String> roles = AuthorityUtils
				.authorityListToSet(SecurityContextHolder.getContext().getAuthentication().getAuthorities());
		HttpSession session = request.getSession(true); // Obtiene el objeto de sesion
		boolean isAdmin = roles.contains("ROLE_ADMIN"); // Comprueba si el usuario tiene rol de administrador
		session.setAttribute("isAdmin", isAdmin); // guarda el rol del usuario en el objeto de sesión
		Usuario usuario = new Usuario();
		if (isAdmin) {
			LOGGER.log(Level.parse("INFO"), "entro como admin");
			usuario.setNombreUsuario("admin");
			request.getSession().setAttribute("usuario", usuario);
			return condominios(request);
		}
		LOGGER.log(Level.parse("INFO"), "entro como user");
		usuario.setNombreUsuario("user");
		request.getSession().setAttribute("usuario", usuario);
		return principal(request, "finanzas");
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

	@RequestMapping(value = "/admin/mpago", method = RequestMethod.GET)
	public ModelAndView mpago(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("mpago");
		return model;
	}

	@RequestMapping(value = "/admin/finanzascon", method = RequestMethod.GET)
	public ModelAndView finanzascon(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("finanzascon");
		return model;
	}

	@RequestMapping(value = "/admin/cuadrofinanzas", method = RequestMethod.GET)
	public ModelAndView cuadrofinanzas(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("cuadrofinanzas");
		int num = Integer.parseInt(request.getParameter("num"));
		model.addObject("num", num);
		return model;
	}

	@RequestMapping(value = "/admin/resumen", method = RequestMethod.POST)
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
		// System.out.println(condo.getArchivo());
		condo.setPhotoc(request.getParameter("photobase64"));
		condo.setNamec(request.getParameter("namec"));
		LOGGER.info(condo.getNamec());
		condo.setNumber(request.getParameter("number"));
		condo.setPhone(request.getParameter("phone"));
		condo.setStreet(request.getParameter("street"));
		condo.setWeb(request.getParameter("web"));
		int max = Integer.parseInt(request.getParameter("contador"));
		System.out.println("xxxxx:" + max);
		finan = new Finanzas[max];
		for (int i = 0; i < max; i++) {
			finan[i] = new Finanzas();
			String alias = request.getParameter("alias" + (i + 1));
			String tipo = request.getParameter("tipo" + (i + 1));
			Double montoinicial = Double.parseDouble(request.getParameter("montoinicial" + (i + 1)));
			String numerocuenta = request.getParameter("numerocuenta" + (i + 1));
			String numerotarjeta = request.getParameter("numerotarjeta" + (i + 1));
			String numeroclabe = request.getParameter("numeroclabe" + (i + 1));
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

	@RequestMapping(value = "/admin/condominios", method = RequestMethod.GET)
	public ModelAndView condominios(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("condominios");
		Condominios condominios = CondominiosClient.getCondominioClient(request);
		model.addObject("condominios", condominios);
		return model;
	}

	@RequestMapping(value = "/admin/altavecinos", method = RequestMethod.GET)
	public ModelAndView altavecinos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("altavecinos");
		return model;
	}

	@RequestMapping(value = "/admin/agregarmail", method = RequestMethod.POST)
	public ModelAndView agregarmail(HttpServletRequest request) {
		Mail mail = new Mail();
		String correo = request.getParameter("correoInvite");
		mail.setCorreo(correo);
		ModelAndView model = new ModelAndView("agregarmail");
		model.addObject("mail1", mail);
		return model;
	}

	@RequestMapping(value = "/auth/principal/{page}", method = RequestMethod.GET)
	public ModelAndView principal(HttpServletRequest request, @PathVariable("page") String page) {
		ModelAndView model = new ModelAndView("principal");
		LOGGER.log(Level.parse("INFO"), page);
		Principaladmins principaladmins = PrincipaladminsClient.getPrincipaladminClient(request);
		model.addObject("principaladmins", principaladmins);
		model.addObject("pageId", page);
		return model;
	}

	@RequestMapping(value = "/auth/finanzas", method = RequestMethod.GET)
	public ModelAndView finanzas(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("finanzas");
		Ingresos[] ingresos = IngresosClient.getIngresoClient(request);
		Egresos[] egresos = EgresosClient.getEgresoClient(request);
		Vecinos[] vecinos = VecinosClient.getVecinoClient(request);
		Finanzas[] finanzas = CuentasClient.getCuentaClient(request);
		model.addObject("finanzas", finanzas);
		model.addObject("vecinos", vecinos);
		model.addObject("ingresos", ingresos);
		model.addObject("egresos", egresos);
		return model;
	}
	
	@RequestMapping(value = "/auth/agregaring", method = RequestMethod.POST)
	public ModelAndView agregaring(HttpServletRequest request) {
		Ingresos ingresos = new Ingresos();
		String fecha = request.getParameter("fechaIngreso");
		String concepto = request.getParameter("conceptoIngreso");
		String cantidad = request.getParameter("cantidadIngreso");
		String comprobante = request.getParameter("comprobanteIngreso");
		ingresos.setFecha(fecha);
		ingresos.setConcepto(concepto);
		ingresos.setCantidad(cantidad);
		ingresos.setComprobante(comprobante);
		ModelAndView model = new ModelAndView("agregaring");
		model.addObject("ingresos1", ingresos);
		return model;
	}
	
	@RequestMapping(value = "/auth/agregaregr", method = RequestMethod.POST)
	public ModelAndView agregaregr(HttpServletRequest request) {
		Egresos egresos = new Egresos();
		String fecha = request.getParameter("fechaEgreso");
		String concepto = request.getParameter("conceptoEgreso");
		String cantidad = request.getParameter("cantidadEgreso");
		String comprobante = request.getParameter("comprobanteEgresos");
		egresos.setFecha(fecha);
		egresos.setConcepto(concepto);
		egresos.setCantidad(cantidad);
		egresos.setComprobante(comprobante);
		ModelAndView model = new ModelAndView("agregaregr");
		model.addObject("egresos1", egresos);
		return model;
	}

	@RequestMapping(value = "/auth/cuadroie", method = RequestMethod.GET)
	public ModelAndView cuadroie(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("cuadroie");
		Ingresos[] ingresos = IngresosClient.getIngresoClient(request);
		Egresos[] egresos = EgresosClient.getEgresoClient(request);
		model.addObject("ingresos", ingresos);
		model.addObject("egresos", egresos);
		return model;
	}

	@RequestMapping(value = "/auth/agendavecinos", method = RequestMethod.GET)
	public ModelAndView agendavecinos(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("agendavecinos");
		Pagos pagos = new Pagos();
		ArrayList<Pagos> pagos1 = new ArrayList<Pagos>();
		ArrayList<Adeudos> adeudos = new ArrayList<Adeudos>(); 
		Vecinos[] vecinos = VecinosClient.getVecinoClient(request);
		model.addObject("vecinos", vecinos);
		return model;
	}

	@RequestMapping(value = "/auth/datosAgendavecinos", method = RequestMethod.GET, produces = "application/json")
	public String datosAgendavecinos(HttpServletRequest request) {
		ObjectMapper mapper = new ObjectMapper();
		String nombreVecino = request.getParameter("namev");
		Vecinos vecinoActual = new Vecinos();
		String vecinoString = "";
		Vecinos[] vecinosLista = VecinosClient.getVecinoClient(request);
		for (Vecinos vecino : vecinosLista) {
			if (vecino.getNamev().equals(nombreVecino)) {
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
		Avisos[] avisos = AvisosClient.getAvisoClient(request);
		model.addObject("avisos", avisos);
		for (Object aviso : avisos) {
			System.out.println(avisos);
		}
		return model;
	}

	@RequestMapping(value = "/auth/agregarcom", method = RequestMethod.POST)
	public ModelAndView agregarcom(HttpServletRequest request) {
		Comentario comentario1 = new Comentario();
		Principaladmins principaladmins = PrincipaladminsClient.getPrincipaladminClient(request);
		String cuerpo = request.getParameter("textCom");
		System.out.println(cuerpo);
		Date fecha = new Date();
		comentario1.setBody(cuerpo);
		comentario1.setDate(fecha);
		ModelAndView model = new ModelAndView("agregarcom");
		model.addObject("principaladmins", principaladmins);
		model.addObject("comment", comentario1);
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
		Principaladmins principaladmins = PrincipaladminsClient.getPrincipaladminClient(request);
		Principalvecinos principalvecinos = PrincipalvecinosClient.getPrincipalvecinoClient(request);
		model.addObject("principaladmins", principaladmins);
		model.addObject("principalvecinos", principalvecinos);
		return model;
	}

	@RequestMapping(value = "/auth/reglamento", method = RequestMethod.GET)
	public ModelAndView reglamento(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("reglamento");
		Condominios condominios = CondominiosClient.getCondominioClient(request);
		model.addObject("condominios", condominios);
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
		Condominios condominios = CondominiosClient.getCondominioClient(request);
		Finanzas[] finanzas = CuentasClient.getCuentaClient(request);
		model.addObject("condominios", condominios);
		model.addObject("finanzas", finanzas);
		return model;
	}

	@RequestMapping(value = "/auth/cuadroconfig", method = RequestMethod.GET)
	public ModelAndView cuadroconfig(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("cuadroconfig");
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println(num);
		model.addObject("num", num);
		Condominios condominios = CondominiosClient.getCondominioClient(request);
		model.addObject("condominios", condominios);
		return model;
	}
}
