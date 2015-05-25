package operaciones;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.*;

public class OperacionesUsuario {
	
	Session session=null;
	Transaction tx=null;
		
	@SuppressWarnings("unchecked")
	public List<Usuario> login(String recibido){
		UsuarioDAO usuario=new UsuarioDAO();
		return usuario.findByProperty("correo", recibido);
	}
	
	public void registro(Usuario usuario){
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		session.save(usuario);
		tx.commit();
	}
		
}
