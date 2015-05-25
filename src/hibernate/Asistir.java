package hibernate;

/**
 * Asistir entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Asistir implements java.io.Serializable {

	// Fields

	private Integer id;
	private Evento evento;
	private Usuario usuario;

	// Constructors

	/** default constructor */
	public Asistir() {
	}

	/** full constructor */
	public Asistir(Evento evento, Usuario usuario) {
		this.evento = evento;
		this.usuario = usuario;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Evento getEvento() {
		return this.evento;
	}

	public void setEvento(Evento evento) {
		this.evento = evento;
	}

	public Usuario getUsuario() {
		return this.usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}