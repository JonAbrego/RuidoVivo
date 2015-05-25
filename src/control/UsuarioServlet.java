package control;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import hibernate.Evento;
import hibernate.Usuario;
import hibernate.Grupo;
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
		if(operaciones.login(usuario).size()==0 && operaciones.loginG(usuario).size()==0){
			return "redirect:principal.htm";
		}else{			
			if(operaciones.login(usuario).size()>0){
				Usuario u= operaciones.login(usuario).get(0);
				System.out.println(u.getContrasena());
				if(u.getContrasena().equals(contrasena)){
					return "inicio_usuario";
				}else{
					return "redirect:principal.htm";
				}
			}else{
				Grupo g= operaciones.loginG(usuario).get(0);
				System.out.println(g.getContrasena());
				if(g.getContrasena().equals(contrasena)){
					return "inicio_grupo";
				}else{
					return "redirect:principal.htm";
				}
			}				
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
	
	@RequestMapping(method=RequestMethod.POST, params={"addGroup"})
	public String goodRegistroG(@RequestParam("dateG") String[] nombre){
		if(operaciones.loginG(nombre[0]).size() == 0){
			operaciones.registroG(new Grupo(nombre[0],nombre[1],nombre[2],nombre[3]));;
			return "inicio_grupo";
		}else{
			return "redirect:registro.htm";
		}		
	}
	
	@RequestMapping(method=RequestMethod.POST, params={"addEvento"})
	public String newEvent(@RequestParam("evento") String[] datos){
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		try {				
			operaciones.registroE(new Evento(datos[0],datos[1],formatter.parse(datos[2]),Double.parseDouble(datos[3]),datos[4]));
			return "inicio_grupo";
		} catch (ParseException e) {
			e.printStackTrace();
			return "inicio_grupo";
		}
		
	}
}
