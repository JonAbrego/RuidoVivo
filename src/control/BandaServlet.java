package control;

import hibernate.Grupo;
import javax.servlet.http.HttpServlet;


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
	private ModelAndView model=new ModelAndView();
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView verifica(){		
		if(sesion.getUsuario()==null){
			model.setViewName("principal");
			return model;
		}			
			Grupo g= grp.login(sesion.getUsuario()).get(0);								
			model.addObject("nombre", g.getNombre());
			model.addObject("informacion",g.getInformacion());
			model.addObject("integrantes",g.getIntegranteses());
			model.setViewName("inicio_grupo");
			return model;
	}
}
