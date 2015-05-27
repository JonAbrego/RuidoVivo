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
@RequestMapping("/editar.htm")

public class EditarServlet {
	
	private OperacionesUsuario usu = new OperacionesUsuario();
	private OperacionesBanda grp= new OperacionesBanda();	
	
	@Autowired
	private MiSesion misesion;
	
	@RequestMapping(method=RequestMethod.GET)
	public String sesionActiva(){
		if(usu.login(misesion.getUsuario()).size()>0){			
			return "redirect:edit.htm";
		} else if(grp.login(misesion.getUsuario()).size()>0){			
			return "redirect:editarBanda.htm";
		}		
		return "redirect:principal.htm"; 
	}
	

}
