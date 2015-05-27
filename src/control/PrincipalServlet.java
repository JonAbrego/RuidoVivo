package control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bean.MiSesion;


@Controller
@RequestMapping("/principal.htm")

public class PrincipalServlet {
	
	@Autowired
	private MiSesion misesion;
	
	@RequestMapping(method=RequestMethod.GET)
	public String showPrincipal(){
		if(misesion.getUsuario()!=null){
			return "redirect:login.htm";
		}
		return "principal";
	}
		
	@RequestMapping(method=RequestMethod.POST, params={"banda"})
	public String showBanda(){
		return "grupo";
	}

}
