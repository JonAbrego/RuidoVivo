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
	private MiSesion misesion;
	
	private OperacionesBanda grp= new OperacionesBanda();
	private ModelAndView model=new ModelAndView();
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView verifica(){		
		if(misesion.getUsuario()==null){
			model.setViewName("inicio");
			return model;
		}			
			Grupo g= grp.login(misesion.getUsuario()).get(0);								
			model.addObject("nombre", g.getNombre());
			model.addObject("informacion",g.getInformacion());
			model.addObject("integrantes",g.getIntegranteses());
			model.addObject("logo", "<img src=\""+ g.getLogo() +"\" style=\"height:150px\">");
			model.setViewName("inicio_grupo");
			return model;
	}
}
