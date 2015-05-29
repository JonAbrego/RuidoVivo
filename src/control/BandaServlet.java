package control;

import hibernate.Grupo;
import operaciones.OperacionesBanda;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bean.MiSesion;

@Controller
@RequestMapping("/grupo.htm")


public class BandaServlet {	
	
	@Autowired
	private MiSesion misesion;
	
	private OperacionesBanda grp= new OperacionesBanda();
	private ModelAndView model=new ModelAndView();
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView verifica(){		
		try{
			if(misesion.getUsuario()==null){
				model.setViewName("principal");
				return model;
			}			
			Grupo g= grp.login(misesion.getUsuario()).get(0);
			System.out.println("Este grupo inicio sesion: "+g);
			model.setViewName("inicio_grupo");
			model.addObject("banda", g);
			model.addObject("integrantes", g.getIntegranteses());			
			return model;
		}catch(Exception e){
			System.out.println("Aqui fallo");
			model.setViewName("inicio");
			return model;			
		}
	}
}
