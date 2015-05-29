package control;

import hibernate.Grupo;
import operaciones.OperacionesBanda;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bean.MiSesion;

@Controller
@RequestMapping("/editarBanda.htm")


public class EditarBandaServlet {
	
	@Autowired
	private MiSesion misesion;
		
	private OperacionesBanda banda= new OperacionesBanda();
	private ModelAndView principal=new ModelAndView();
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView showDatosUsuario(){		
		if(misesion.getUsuario()==null){
			principal.setViewName("inicio");
			return principal;
		}
		Grupo g= banda.login(misesion.getUsuario()).get(0);
		principal.setViewName("editBanda");		
		principal.addObject("banda", g);
		return principal;
	}	
	
	@RequestMapping(method=RequestMethod.POST, params={"editUser"})
	public String newEvent(@RequestParam("datos") String[] datosn){
		String nombre = misesion.getUsuario();		
		Grupo g= banda.login(nombre).get(0);
		System.out.println("Session activa que esta configurando:   "+g);			
		if(datosn.length>3){
			if(g.getContrasena().equals(datosn[3])){				
				banda.actualizaGrupoContra(nombre, datosn[4]);				
			} else {
				return "redirect:editarBanda.htm";
			}
		}
		banda.actualizaGrupoInformacion(nombre, datosn[1]);		
		banda.actualizaGrupoName(nombre, datosn[0]);			
		misesion.setUsuario(datosn[0]);
		return "redirect:login.htm";
	}
}
