package hibernate;

import java.util.HashSet;
import java.util.Set;

/**
 * Usuario entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Usuario implements java.io.Serializable {

	// Fields

	private Integer id;
	private String correo;
	private String nombre;
	private String contrasena;
	
	private Set<Asistir> asistirs = new HashSet<Asistir>(0);
	@SuppressWarnings("rawtypes")
	private Set seguirs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Usuario() {
	}

	/** minimal constructor */
	public Usuario(String correo) {
		this.correo = correo;
	}
	
	public Usuario(String correo, String nombre, String contrasena){
		this.correo = correo;
		this.nombre = nombre;
		this.contrasena = contrasena;
	}

	/** full constructor */
	@SuppressWarnings("rawtypes")
	public Usuario(String correo, String nombre, String contrasena,
			Set<Asistir> asistirs, Set seguirs) {
		this.correo = correo;
		this.nombre = nombre;
		this.contrasena = contrasena;
		this.asistirs = asistirs;
		this.seguirs = seguirs;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCorreo() {
		return this.correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getContrasena() {
		return this.contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}
	
	@SuppressWarnings("rawtypes")
	public Set getAsistirs() {
		return this.asistirs;
	}

	
	public void setAsistirs(Set<Asistir> asistirs) {
		this.asistirs = asistirs;
	}

	@SuppressWarnings("rawtypes")
	public Set getSeguirs() {
		return this.seguirs;
	}

	@SuppressWarnings("rawtypes")
	public void setSeguirs(Set seguirs) {
		this.seguirs = seguirs;
	}
	
	public String toString(){
		return "Usuario [ correo:"+correo+",nombre:"+nombre+"]";
	}
}