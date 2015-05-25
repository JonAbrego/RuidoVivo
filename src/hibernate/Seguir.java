package hibernate;

/**
 * Seguir entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Seguir implements java.io.Serializable {

	// Fields

	private Integer id;
	private Usuario usuario;
	private Grupo grupo;

	// Constructors

	/** default constructor */
	public Seguir() {
	}

	/** full constructor */
	public Seguir(Usuario usuario, Grupo grupo) {
		this.usuario = usuario;
		this.grupo = grupo;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Usuario getUsuario() {
		return this.usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Grupo getGrupo() {
		return this.grupo;
	}

	public void setGrupo(Grupo grupo) {
		this.grupo = grupo;
	}

}