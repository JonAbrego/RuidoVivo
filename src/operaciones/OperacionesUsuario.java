package operaciones;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.*;

public class OperacionesUsuario {
	
	Session session=null;
	Transaction tx=null;
	
	/*Listar los usuarios*/
	@SuppressWarnings("unchecked")
	public List<Usuario> login(String recibido){
		UsuarioDAO usuario=new UsuarioDAO();
		return usuario.findByProperty("correo", recibido);
	}
	
	@SuppressWarnings("unchecked")
	public List<Evento> evento(String recibido){
		EventoDAO evento=new EventoDAO();
		return evento.findByProperty("nombre", recibido);
	}
	
	/*guardar nuevo usuario en la base*/
	public void registro(Usuario usuario){
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		session.save(usuario);
		tx.commit();
	}
	
	/*Update name*/
	public void actualizaUsuarioName(String correo, String nuevo){
		Session s = HibernateSessionFactory.getSession();	
		Transaction txt=null;
		txt=s.beginTransaction();
		String hql = "update Usuario set nombre = '"+nuevo+"' where correo = '"+correo+"'";
        Query query = s.createQuery(hql);	       
        int rowCount = query.executeUpdate();
        txt.commit();  
        System.out.println("Rows affected: " + rowCount);		             
	}
	
	/*Update password*/
	public void actualizaUsuarioContra(String correo, String nuevo){
		Session s = HibernateSessionFactory.getSession();	
		Transaction txt=null;
		txt=s.beginTransaction();
		String hql = "update Usuario set contrasena = '"+nuevo+"' where correo = '"+correo+"'";
        Query query = s.createQuery(hql);	       
        int rowCount = query.executeUpdate();
        txt.commit();  
        System.out.println("Rows affected: " + rowCount);		             
	}
	
	/*Update email*/
	public void actualizaUsuarioCorreo(String correo, String nuevo){
		Session s = HibernateSessionFactory.getSession();	
		Transaction txt=null;
		txt=s.beginTransaction();
		String hql = "update Usuario set correo = '"+nuevo+"' where correo = '"+correo+"'";
        Query query = s.createQuery(hql);	       
        int rowCount = query.executeUpdate();
        txt.commit();  
        System.out.println("Rows affected: " + rowCount);		             
	}


	public void asistir(Asistir asistir){
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		session.save(asistir);
		tx.commit();
	}
}
