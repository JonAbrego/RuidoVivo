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
	@SuppressWarnings("rawtypes")
	private Set participanteses = new HashSet(0);
	@SuppressWarnings("rawtypes")
	private Set seguirs = new HashSet(0);
	@SuppressWarnings("rawtypes")
	private Set integranteses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Grupo() {
	}

	/** minimal constructor */
	public Grupo(String nombre) {
		this.nombre = nombre;
	}

	/** full constructor */
	@SuppressWarnings("rawtypes")
	public Grupo(String nombre, String informacion, String logo,
			Set participanteses, Set seguirs, Set integranteses) {
		this.nombre = nombre;
		this.informacion = informacion;
		this.logo = logo;
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

	@SuppressWarnings("rawtypes")
	public Set getParticipanteses() {
		return this.participanteses;
	}

	@SuppressWarnings("rawtypes")
	public void setParticipanteses(Set participanteses) {
		this.participanteses = participanteses;
	}

	@SuppressWarnings("rawtypes")
	public Set getSeguirs() {
		return this.seguirs;
	}

	@SuppressWarnings("rawtypes")
	public void setSeguirs(Set seguirs) {
		this.seguirs = seguirs;
	}

	@SuppressWarnings("rawtypes")
	public Set getIntegranteses() {
		return this.integranteses;
	}

	@SuppressWarnings("rawtypes")
	public void setIntegranteses(Set integranteses) {
		this.integranteses = integranteses;
	}

}