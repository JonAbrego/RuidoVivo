package control;

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
import org.springframework.web.servlet.ModelAndView;

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
		}
		return "redirect:principal.htm"; 
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView showLogin(@RequestParam("user") String usuario,@RequestParam("pass") String contrasena){
		//Verifica si los datos obtenidos no están en algún de los dos campos
		ModelAndView principal=new ModelAndView("principal");
		ModelAndView usuarios=new ModelAndView("inicio_usuario");
		ModelAndView grupos=new ModelAndView("inicio_grupo");
		if(usu.login(usuario).size()==0 && grp.login(usuario).size()==0){
			//Si no existe en algno de los 2 redirecciona a la principal
			return principal;
		}else{			
			//Como vio que si existe, verifica en cual se encuentra, si la lista de usuarios es 
			// mayor que creo entonces esta intentando acceder un usario normal
			if(usu.login(usuario).size()>0){
				//Como es un unico usuario obtenemos el que esta en la posición 0
				Usuario u= usu.login(usuario).get(0);
				//Vemos si la contrasena ingresada es igual con la asiganda a ese usuario
				if(u.getContrasena().equals(contrasena)){
					usuarios.addObject("nombre", u.getNombre());
					// Si est igual redireccioamos a la principal de usuario
					return usuarios;
				}else{
					//Si esta mal hacemos que ingrense de nuevo dicha contrasena 
					return principal;
				}
			}else{
				//Como existe pero no esta en usuarios normales, accedesmos a las bandas
				//Al ser un unica banda obtenemso la que esta en la posicion 0
				Grupo g= grp.login(usuario).get(0);								
				//Vemos si la contrasena ingresada es igual con la asiganda a la banda 
				if(g.getContrasena().equals(contrasena)){					
					grupos.addObject("nombre", g.getNombre());
					grupos.addObject("informacion",g.getInformacion());
					grupos.addObject("integrantes",g.getIntegranteses());										
					//Si es igual redireccionamos a la principal de banda
					for(Integrantes a : g.getIntegranteses()){
						System.out.println(a.getNombre());
					}
					return grupos;
				}else{
					return principal;
				}
			}				
		}
	}
	
	@RequestMapping(method=RequestMethod.POST, params={"addUser"})
	public ModelAndView goodUser(@RequestParam("datos") String[] correo){
		ModelAndView modelandview = new ModelAndView("inicio_usuario");
		ModelAndView modelandview2 = new ModelAndView("registro");
		if(usu.login(correo[0]).size() == 0){
			Usuario u = new Usuario(correo[0],correo[1],correo[2]);			
			usu.registro(u);			
			modelandview.addObject("nombre", u.getNombre());
			return modelandview;
		}else{
			return modelandview2;
		}		
	}
	
	@RequestMapping(method=RequestMethod.POST, params={"addGroup"})
	public ModelAndView goodGroup(@RequestParam("dateG") String[] nombre){
		ModelAndView modelandview = new ModelAndView("inicio_grupo");
		ModelAndView modelandview2 = new ModelAndView("registro");
		if(grp.login(nombre[0]).size() == 0){
			Grupo g = new Grupo(nombre[0],nombre[1],nombre[2],nombre[3]);
			grp.registro(g);
			modelandview.addObject("nombre", g.getNombre());			
			modelandview.addObject("nombre", g.getInformacion());
			return modelandview;
		}else{
			return modelandview2;
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
