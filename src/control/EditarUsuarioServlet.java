package control;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/edit.htm")

public class EditarUsuarioServlet {	

	@RequestMapping(method=RequestMethod.GET)
	public String showRegistro(){
		return "editUsuario";
	}	
}
