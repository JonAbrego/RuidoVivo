package control;

import hibernate.Usuario;
import operaciones.OperacionesUsuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bean.MiSesion;

@Controller
@RequestMapping("/usuario.htm")


public class UsuarioServlet {
	
	@Autowired
	private MiSesion misesion;
	
	private OperacionesUsuario usu = new OperacionesUsuario();
	private ModelAndView model=new ModelAndView();
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView showRegistro(){	
		try{
			if(misesion.getUsuario()==null){
				model.setViewName("inicio");
				return model;
			}
			Usuario u= usu.login(misesion.getUsuario()).get(0);
			model.setViewName("inicio_usuario");		
			model.addObject("usuario", u);		
			return model;
		}catch(Exception e){
			model.setViewName("inicio");
			misesion.setUsuario(null);
			return model;
		}
	}
	
}
