package hibernate;

/**
 * Integrantes entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Integrantes implements java.io.Serializable {

	// Fields

	private Integer id;
	private Grupo grupo;
	private String nombre;

	// Constructors

	/** default constructor */
	public Integrantes() {
	}

	/** full constructor */
	public Integrantes(Grupo grupo, String nombre) {
		this.grupo = grupo;
		this.nombre = nombre;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Grupo getGrupo() {
		return this.grupo;
	}

	public void setGrupo(Grupo grupo) {
		this.grupo = grupo;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}