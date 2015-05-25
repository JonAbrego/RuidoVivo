package control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/calendario.htm")

public class CalendarioServlet {
	
	@RequestMapping(method=RequestMethod.GET)
	public String showCalendario(){
		return "calendario";
	}
}
