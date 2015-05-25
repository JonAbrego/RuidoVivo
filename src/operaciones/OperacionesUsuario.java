package operaciones;

import java.util.List;

import org.hibernate.Query;
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
	
	public void actualizaUsuarioCorreo(String correo, String nuevo){
		Session s = HibernateSessionFactory.getSession();	
		Transaction txt=null;
		txt=s.beginTransaction();
		String hql = "update Usuario set corre = '"+nuevo+"' where correo = '"+correo+"'";
        Query query = s.createQuery(hql);	       
        int rowCount = query.executeUpdate();
        txt.commit();  
        System.out.println("Rows affected: " + rowCount);		             
	}
	
	@SuppressWarnings("unchecked")
	public List<Grupo> loginG(String recibido){
		GrupoDAO grupo=new GrupoDAO();
		return grupo.findByProperty("nombre", recibido);
	}
	
	public void registroG(Grupo grupo){
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		session.save(grupo);
		tx.commit();
	}
	
	public void registroE(Evento evento){
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		session.save(evento);
		tx.commit();
	}
}
