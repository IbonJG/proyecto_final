package modelo;

public class Tienda {

	private int id;
	private String titulo;
	private int precio_alquiler;
	private int precio_comprar;
	// private int id_genero;
	private Genero genero;
	private Plataforma plataforma;

	// generate constructor from superclass
	public Tienda() {
		super();
		this.id = 0;
		this.titulo = "";
		this.precio_alquiler = 0;
		this.precio_comprar = 0;
		this.genero = new Genero();
		this.plataforma = new Plataforma();

	}

	// getters and setters

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public int getPrecio_alquiler() {
		return precio_alquiler;
	}

	public void setPrecio_alquiler(int precio_alquiler) {
		this.precio_alquiler = precio_alquiler;
	}

	public int getPrecio_comprar() {
		return precio_comprar;
	}

	public void setPrecio_comprar(int precio_comprar) {
		this.precio_comprar = precio_comprar;
	}

	public Genero getGenero() {
		return genero;
	}

	public void setGenero(Genero genero) {
		this.genero = genero;
	}

	public Plataforma getPlataforma() {
		return plataforma;
	}

	public void setPlataforma(Plataforma plataforma) {
		this.plataforma = plataforma;
	}

	@Override
	public String toString() {
		return "Tienda [id=" + id + ", titulo=" + titulo + ", precio_alquiler=" + precio_alquiler + ", precio_comprar="
				+ precio_comprar + ", genero=" + genero + ", plataforma=" + plataforma + "]";
	}

}
