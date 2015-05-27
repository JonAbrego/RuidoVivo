package control;



import hibernate.Usuario;
import operaciones.OperacionesUsuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bean.MiSesion;

@Controller
@RequestMapping("/edit.htm")

public class EditarUsuarioServlet {	

	@Autowired
	private MiSesion sesion;
	
	private OperacionesUsuario usu = new OperacionesUsuario();
	
	@RequestMapping(method=RequestMethod.POST, params={"editUser"})
	public String newEvent(@RequestParam("datos") String[] datosn){
		String correo = sesion.getUsuario();
		Usuario u= usu.login(correo).get(0);
		if(datosn.length>2){
			if(u.getContrasena().equals(datosn[2])){
				usu.actualizaUsuarioContra(correo, datosn[3]);
			} else {
				return "redirect:edit.htm";
			}
		}
		usu.actualizaUsuarioName(correo, datosn[1]);
		usu.actualizaUsuarioCorreo(correo, datosn[0]);
		sesion.setUsuario(datosn[0]);
		return "redirect:usuario.htm";
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView showDatosUsuario(){
		ModelAndView principal=new ModelAndView("inicio");
		if(sesion.getUsuario()==null){
			return principal;
		}
		ModelAndView usuarios=new ModelAndView("editUsuario");
		Usuario u= usu.login(sesion.getUsuario()).get(0);
		usuarios.addObject("usuario", u);
		return usuarios;
	}	
}
