package operaciones;

import hibernate.Evento;
import hibernate.Grupo;
import hibernate.GrupoDAO;
import hibernate.HibernateSessionFactory;
import hibernate.Integrantes;
import hibernate.IntegrantesDAO;

import java.util.List;

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
}
