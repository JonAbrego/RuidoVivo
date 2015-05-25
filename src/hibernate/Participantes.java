package hibernate;

/**
 * Participantes entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Participantes implements java.io.Serializable {

	// Fields

	private Integer id;
	private Evento evento;
	private Grupo grupo;

	// Constructors

	/** default constructor */
	public Participantes() {
	}

	/** full constructor */
	public Participantes(Evento evento, Grupo grupo) {
		this.evento = evento;
		this.grupo = grupo;
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

	public Grupo getGrupo() {
		return this.grupo;
	}

	public void setGrupo(Grupo grupo) {
		this.grupo = grupo;
	}

}