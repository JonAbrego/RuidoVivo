package control;

import hibernate.Usuario;
import operaciones.OperacionesUsuario;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/login.htm")


public class UsuarioServlet {
	private OperacionesUsuario operaciones = new OperacionesUsuario();
	
	@RequestMapping(method=RequestMethod.POST)
	public String showRegistro(@RequestParam("user") String usuario,@RequestParam("pass") String contrasena){		
		if(operaciones.login(usuario).size()==0){
			return "redirect:principal.htm";
		}else{			
			Usuario u= operaciones.login(usuario).get(0);
			System.out.println(u.getContrasena());
			if(u.getContrasena().equals(contrasena)){
				return "inicio_usuario";
			}
			return "redirect:principal.htm";
		}
	}
	
	@RequestMapping(method=RequestMethod.POST, params={"addUser"})
	public String goodRegistro(@RequestParam("datos") String[] correo){
		if(operaciones.login(correo[0]).size() == 0){
			operaciones.registro(new Usuario(correo[0],correo[1],correo[2]));
			return "inicio_usuario";
		}else{
			return "redirect:registro.htm";
		}		
	}
}
