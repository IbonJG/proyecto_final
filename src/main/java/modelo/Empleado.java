package modelo;

public class Empleado {

	private int id;
	private String nombre;
	private String apellido;
	private String rol;

	// generate constructor from superclass
	public Empleado() {
		super();
		this.id = 0;
		this.nombre = "";
		this.apellido = "";
		this.rol = "";
	}

	// getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getRol() {
		return rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

	@Override
	public String toString() {
		return "Empleado [id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", rol=" + rol + "]";
	}

}
