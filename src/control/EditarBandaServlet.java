package control;

import hibernate.Grupo;
import operaciones.OperacionesBanda;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bean.MiSesion;

@Controller
@RequestMapping("/editarBanda.htm")

public class EditarBandaServlet {
	
	@Autowired
	private MiSesion sesion;
		
	private OperacionesBanda banda= new OperacionesBanda(); 
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView showDatosUsuario(){
		ModelAndView principal=new ModelAndView();
		if(sesion.getUsuario()==null){
			principal.setViewName("inicio");
			return principal;
		}
		principal.setViewName("editBanda");
		Grupo u= banda.login(sesion.getUsuario()).get(0);
		principal.addObject("banda", u);
		return principal;
	}	
}
