package control;

import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bean.MiSesion;


@Controller
@RequestMapping("/logout.htm")
public class LogoutServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	@Autowired
	private MiSesion misesion;
	
	@RequestMapping(method=RequestMethod.GET)
	public String showPrincipal(){
		misesion.setUsuario(null);
		return "principal.htm";
	}

}