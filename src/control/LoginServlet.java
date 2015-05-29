package control;

import hibernate.Asistir;
import hibernate.Evento;
import hibernate.Grupo;
import hibernate.Integrantes;
import hibernate.Usuario;
import bean.MiSesion;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import operaciones.OperacionesBanda;
import operaciones.OperacionesUsuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/login.htm")

public class LoginServlet {
	
	private OperacionesUsuario usu = new OperacionesUsuario();
	private OperacionesBanda grp= new OperacionesBanda();	
	
	@Autowired
	private MiSesion misesion;
	
	@RequestMapping(method=RequestMethod.GET)
	public String sesionActiva(){
		if(usu.login(misesion.getUsuario()).size()>0){
			return "redirect:usuario.htm";
		} else if(grp.login(misesion.getUsuario()).size()>0){
			return "redirect:grupo.htm";
		}
		return "redirect:principal.htm"; 
	}
		
	@RequestMapping(method=RequestMethod.POST, params={"login"})
	public String showLogin(@RequestParam("user") String usuario,@RequestParam("pass") String contrasena){
		try{
			if(usu.login(usuario).size()==0 && grp.login(usuario).size()==0){
				return "redirect:principal.htm";
			}else{			
				if(usu.login(usuario).size()>0){				
					Usuario u= usu.login(usuario).get(0);				
					if(u.getContrasena().equals(contrasena)){
						misesion.setUsuario(u.getCorreo());
						return "redirect:usuario.htm";
					}else{					
						return "redirect:principal.htm";
					}
				}else{
					Grupo g= grp.login(usuario).get(0);												
					if(g.getContrasena().equals(contrasena)){
						misesion.setUsuario(g.getNombre());
						return "redirect:grupo.htm";
					}else{
						return "redirect:principal.htm";
					}
				}				
			}
		}catch(Exception e){
			System.out.println("Fallo algo");
			return "redirect:principal.htm";
		}
	}
	
	@RequestMapping(method=RequestMethod.POST, params={"addUser"})
	public String goodUser(@RequestParam("datos") String[] correo){		
		if(usu.login(correo[0]).size() == 0){
			Usuario u = new Usuario(correo[0],correo[1],correo[2]);			
			usu.registro(u);
			misesion.setUsuario(u.getCorreo());
			return "redirect:usuario.htm";			
		}else{
			return "redirect:registro.htm";
		}		
	}
	

	@RequestMapping(method=RequestMethod.POST, params={"integrante"})
	public String integranteNuevo(@RequestParam("integra") String integrante){		
			grp.Integrante(new Integrantes(grp.login(misesion.getUsuario()).get(0),integrante));
			return "redirect:grupo.htm";	
	}
	
	@RequestMapping(method=RequestMethod.POST, params={"historia"})
	public String asistir(@RequestParam("asistir") String asistir){
		try{
			usu.asistir(new Asistir(usu.evento(asistir).get(0),usu.login(misesion.getUsuario()).get(0)));
			return "redirect:usuario.htm";
		}catch(Exception e){
			return "redirect:usuario.htm";
		}
	}
	
	@RequestMapping(method=RequestMethod.POST, params={"addGroup"})
	public String goodGroup(@RequestParam("dateG") String[] nombre){		
		if(grp.login(nombre[0]).size() == 0){
			Grupo g = new Grupo(nombre[0],nombre[1],nombre[2],nombre[3]);
			grp.registro(g);
			misesion.setUsuario(g.getNombre());
			return "redirect:grupo.htm";		
		}else{
			return "redirect:registro.htm";
		}		
	}
	
	@RequestMapping(method=RequestMethod.POST, params={"addEvento"})
	public String newEvent(@RequestParam("evento") String[] datos){
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		try {				
			grp.registroE(new Evento(datos[0],datos[1],formatter.parse(datos[2]),Double.parseDouble(datos[3]),datos[4]));
			return "inicio_grupo";
		} catch (ParseException e) {
			e.printStackTrace();
			return "inicio_grupo";
		}		
	}	
}
