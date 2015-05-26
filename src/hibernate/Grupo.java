package hibernate;

import java.util.HashSet;
import java.util.Set;

/**
 * Grupo entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Grupo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String nombre;
	private String informacion;
	private String logo;
	private String contrasena;
	
	private Set participanteses = new HashSet(0);
	
	private Set seguirs = new HashSet(0);
	
	private Set<Integrantes> integranteses = new HashSet<Integrantes>(0);

	// Constructors

	/** default constructor */
	public Grupo() {
	}

	/** minimal constructor */
	public Grupo(String nombre) {
		this.nombre = nombre;
	}

	public Grupo(String nombre, String informacion, String logo,String contrasena){
		this.nombre = nombre;
		this.informacion = informacion;
		this.logo = logo;
		this.contrasena = contrasena;		
	}
	
	/** full constructor */
	@SuppressWarnings("rawtypes")
	public Grupo(String nombre, String informacion, String logo,
			String contrasena, Set participanteses, Set seguirs,
			Set integranteses) {
		this.nombre = nombre;
		this.informacion = informacion;
		this.logo = logo;
		this.contrasena = contrasena;
		this.participanteses = participanteses;
		this.seguirs = seguirs;
		this.integranteses = integranteses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getInformacion() {
		return this.informacion;
	}

	public void setInformacion(String informacion) {
		this.informacion = informacion;
	}

	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getContrasena() {
		return this.contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public Set getParticipanteses() {
		return this.participanteses;
	}

	public void setParticipanteses(Set participanteses) {
		this.participanteses = participanteses;
	}

	public Set getSeguirs() {
		return this.seguirs;
	}

	public void setSeguirs(Set seguirs) {
		this.seguirs = seguirs;
	}
	
	public Set<Integrantes> getIntegranteses() {
		return this.integranteses;
	}

	public void setIntegranteses(Set<Integrantes> integranteses) {
		this.integranteses = integranteses;
	}

}