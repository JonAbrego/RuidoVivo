package hibernate;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Evento entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Evento implements java.io.Serializable {

	// Fields

	private Integer id;
	private String foto;
	private String nombre;
	private String descripcion;
	private Date fecha;
	private Double costo;
	private String lugar;
	@SuppressWarnings("rawtypes")
	private Set participanteses = new HashSet(0);
	@SuppressWarnings("rawtypes")
	private Set asistirs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Evento() {
	}
	


	public Evento(String nombre, String descripcion, Date fecha, Double costo, String lugar){
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.fecha = fecha;
		this.costo = costo;
		this.lugar = lugar;
	}
	
	/** full constructor */
	@SuppressWarnings("rawtypes")
	public Evento(String foto, String nombre, String descripcion, Date fecha,
			Double costo, String lugar, Set participanteses, Set asistirs) {
		this.foto = foto;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.fecha = fecha;
		this.costo = costo;
		this.lugar = lugar;
		this.participanteses = participanteses;
		this.asistirs = asistirs;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFoto() {
		return this.foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Double getCosto() {
		return this.costo;
	}

	public void setCosto(Double costo) {
		this.costo = costo;
	}

	public String getLugar() {
		return this.lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
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
	public Set getAsistirs() {
		return this.asistirs;
	}

	@SuppressWarnings("rawtypes")
	public void setAsistirs(Set asistirs) {
		this.asistirs = asistirs;
	}

}