package control;

import operaciones.OperacionesBanda;
import operaciones.OperacionesUsuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bean.MiSesion;

@Controller
@RequestMapping("/calendarioU.htm")

public class CalendarioUsuario {
	
	private OperacionesUsuario usu = new OperacionesUsuario();
	private OperacionesBanda grp= new OperacionesBanda();
	private ModelAndView model = new ModelAndView();
	
	@Autowired
	private MiSesion misesion;
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView sesionActiva(){
		if(usu.login(misesion.getUsuario()).size()>0){
			model.setViewName("calendarioDe");
			return model;
		} else if(grp.login(misesion.getUsuario()).size()>0){
			model.setViewName("calendarioDe");
			return model;
		}
		model.setViewName("calendario");
		return model; 
	}
}
