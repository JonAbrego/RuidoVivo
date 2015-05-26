package control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bean.MiSesion;

@Controller
@RequestMapping("/usuario.htm")


public class UsuarioServlet {
	
	@Autowired
	private MiSesion sesion;
	
	@RequestMapping(method=RequestMethod.GET)
	public String showRegistro(){		
		if(sesion.getUsuario()==null){
			return "principal.htm";
		}else{			
			return "inicio_usuario";
		}
	}
	
}
