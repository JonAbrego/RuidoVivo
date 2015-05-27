package operaciones;

import hibernate.Evento;
import hibernate.Grupo;
import hibernate.GrupoDAO;
import hibernate.HibernateSessionFactory;
import hibernate.Integrantes;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class OperacionesBanda {
	
	Session session=null;
	Transaction tx=null;
	
	/*list*/
	@SuppressWarnings("unchecked")
	public List<Grupo> login(String recibido){
		GrupoDAO grupo=new GrupoDAO();
		return grupo.findByProperty("nombre", recibido);
	}
	
	/*Save a group*/
	public void registro(Grupo grupo){
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		session.save(grupo);
		tx.commit();
	}
	
	/*Save a event*/
	public void registroE(Evento evento){
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		session.save(evento);
		tx.commit();
	}	

		public void Integrante(Integrantes integrante){
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		session.save(integrante);
		tx.commit();
	}

	public void actualizaGrupoName(String nombre, String nuevo){
		Session s = HibernateSessionFactory.getSession();	
		Transaction txt=null;
		txt=s.beginTransaction();
		String hql = "update Grupo set nombre = '"+nuevo+"' where nombre = '"+nombre+"'";
        Query query = s.createQuery(hql);	       
        int rowCount = query.executeUpdate();
        txt.commit();  
        System.out.println("Rows affected: " + rowCount);		             
	}
	
	/*Update password*/
	public void actualizaGrupoContra(String nombre, String nuevo){
		Session s = HibernateSessionFactory.getSession();	
		Transaction txt=null;
		txt=s.beginTransaction();
		String hql = "update Grupo set contrasena = '"+nuevo+"' where nombre = '"+nombre+"'";
        Query query = s.createQuery(hql);	       
        int rowCount = query.executeUpdate();
        txt.commit();  
        System.out.println("Rows affected: " + rowCount);		             
	}
	
	/*Update email*/
	public void actualizaGrupoCorreo(String nombre, String nuevo){
		Session s = HibernateSessionFactory.getSession();	
		Transaction txt=null;
		txt=s.beginTransaction();
		String hql = "update Grupo set informacion = '"+nuevo+"' where nombre = '"+nombre+"'";
        Query query = s.createQuery(hql);	       
        int rowCount = query.executeUpdate();
        txt.commit();  
        System.out.println("Rows affected: " + rowCount);		             
	}
}
