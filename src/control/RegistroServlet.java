package control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bean.MiSesion;

@Controller
@RequestMapping("/registro.htm")

public class RegistroServlet {
	
	@Autowired
	private MiSesion misesion;
	
	@RequestMapping(method=RequestMethod.GET)
	public String showRegistro(){
		if(misesion.getUsuario()!=null){
			return "redirect:login.htm";
		}
		return "registro";
	}

}
