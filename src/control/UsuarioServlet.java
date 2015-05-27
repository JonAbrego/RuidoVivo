package control;

import hibernate.Grupo;
import hibernate.Integrantes;
import hibernate.Usuario;
import operaciones.OperacionesBanda;
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
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView showUsuario(){
		ModelAndView principal=new ModelAndView("inicio");
		if(sesion.getUsuario()==null){
			return principal;
		}
		ModelAndView usuarios=new ModelAndView("inicio_usuario");
		Usuario u= usu.login(sesion.getUsuario()).get(0);
		usuarios.addObject("nombre", u.getNombre());
		return usuarios;
	}
	
}
