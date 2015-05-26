package control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/acercaDe.htm")

public class AcercaDeServlet {
	
	@RequestMapping(method=RequestMethod.GET)
	public String showTienda(){
		return "acercaDe";
	}

}