package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bean.MiSesion;

/**
 * Servlet implementation class LogoutServlet
 */
@Controller
@RequestMapping("/logout.htm")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Autowired
	private MiSesion misesion;
	
	@RequestMapping(method=RequestMethod.GET)
	public String showTienda(){
		misesion.setUsuario(null);
		return "redirect:principal.htm";
	}

}
