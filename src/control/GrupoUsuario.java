package control;

import operaciones.OperacionesBanda;
import operaciones.OperacionesUsuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bean.MiSesion;

@Controller
@RequestMapping("/busqueda.htm")

public class GrupoUsuario {
	
	private OperacionesUsuario usu = new OperacionesUsuario();
	private OperacionesBanda grp= new OperacionesBanda();
	private ModelAndView model = new ModelAndView();
	
	@Autowired
	private MiSesion misesion;
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView sesionActiva(@RequestParam("banda") String banda){
		try{
			grp.login(banda);
			model.addObject("nombre", grp.login(banda).get(0).getNombre());
			model.addObject("informacion", grp.login(banda).get(0).getInformacion());
			model.addObject("integrantes", grp.login(banda).get(0).getIntegranteses());
			if(usu.login(misesion.getUsuario()).size()>0){
				model.setViewName("gruposDe");			
				return model;
			} else if(grp.login(misesion.getUsuario()).size()>0){
				model.setViewName("gruposDe");
				return model;
			}
			model.setViewName("grupo");
			return model;
		}catch(Exception e){
			if(grp.login(misesion.getUsuario()).size()>0){
				model.setViewName("inicio_usuario");
			}else{
				if(grp.login(misesion.getUsuario()).size()>0){
					model.setViewName("inicio_grupo");
				}
				model.setViewName("inicio");
			}							
			return model;
		}
		
	}
}
