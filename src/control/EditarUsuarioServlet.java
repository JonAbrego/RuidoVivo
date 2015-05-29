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
@RequestMapping("/editarDatos.htm")

public class EditarUsuarioServlet {	

	@Autowired
	private MiSesion misesion;
	
	private OperacionesUsuario usu = new OperacionesUsuario();
	private ModelAndView model = new ModelAndView();
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView showDatosUsuario(){			
		if(misesion.getUsuario()==null){
			model.setViewName("inicio");
			return model;
		}						
		Usuario u= usu.login(misesion.getUsuario()).get(0);				
		model.setViewName("editUsuario");		
		model.addObject("usuario",u);
		return model;		
	}	
	
	@RequestMapping(method=RequestMethod.POST, params={"editUser"})
	public String newEvent(@RequestParam("datos") String[] datosn){
		String correo = misesion.getUsuario();
		Usuario u= usu.login(correo).get(0);
		if(datosn.length>2){
			if(u.getContrasena().equals(datosn[3])){
				usu.actualizaUsuarioContra(correo, datosn[4]);
			} else {
				return "redirect:editarDatos.htm";
			}
		}
		if(u.getNombre()!=datosn[1])
			usu.actualizaUsuarioName(correo, datosn[1]);
		if(u.getNombre()!=datosn[0]){
			usu.actualizaUsuarioCorreo(correo, datosn[0]);			
			misesion.setUsuario(datosn[0]);
		}
		return "redirect:login.htm";
	}		
}
