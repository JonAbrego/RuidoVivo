package control;

import hibernate.Grupo;
import hibernate.Integrantes;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import operaciones.OperacionesBanda;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bean.MiSesion;

@Controller
@RequestMapping("/grupo.htm")

public class BandaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private MiSesion sesion;
	
	private OperacionesBanda grp= new OperacionesBanda();
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView verifica(){
		ModelAndView principal=new ModelAndView("inicio");
		if(sesion.getUsuario()==null){
			return principal;
		}
		ModelAndView grupos=new ModelAndView("inicio_grupo");
		Grupo g= grp.login(sesion.getUsuario()).get(0);								
		grupos.addObject("nombre", g.getNombre());
		grupos.addObject("informacion",g.getInformacion());
		grupos.addObject("integrantes",g.getIntegranteses());
		return grupos;
	}

}
