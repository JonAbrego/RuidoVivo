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
	private MiSesion sesion;
	
	private OperacionesUsuario usu = new OperacionesUsuario();
	private ModelAndView model=new ModelAndView("inicio");
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView showRegistro(){
		
		if(sesion.getUsuario()==null){
			model.setViewName("inicio");
			return model;
		}
		model.setViewName("inicio_usuario");
		Usuario u= usu.login(sesion.getUsuario()).get(0);
		model.addObject("nombre", u.getNombre());
		model.addObject("asistencias", u.getAsistirs());
		return model;
	}
	
}
