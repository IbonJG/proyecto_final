package modelo;

public class Socio {

	private int id;
	private String nombre;
	private String apellido1;
	private String apellido2;
	private String email;
	private String dni;
	private boolean administrador;

	// generate constructor from superclass
	public Socio() {
		super();
		this.id = 0;
		this.nombre = "";
		this.apellido1 = "";
		this.apellido2 = "";
		this.email = "";
		this.dni = "";
		this.administrador = false;
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

	public String getApellido1() {
		return apellido1;
	}

	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}

	public String getApellido2() {
		return apellido2;
	}

	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public boolean isAdministrador() {
		return administrador;
	}

	public void setAdministrador(boolean administrador) {
		this.administrador = administrador;
	}

	@Override
	public String toString() {
		return "Socio [id=" + id + ", nombre=" + nombre + ", apellido1=" + apellido1 + ", apellido2=" + apellido2
				+ ", email=" + email + ", dni=" + dni + ", administrador=" + administrador + "]";
	}

}
