package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import modelo.Socio;

public class SocioDAO {

	/**
	 * Consulta la tabla 'socios' para recuperar todos y devolverlos en una
	 * coleccion
	 * 
	 * @return Lista con todos los socios de la bbdd
	 * @throws Exception
	 */

	public static ArrayList<Socio> getAll() {

		ArrayList<Socio> coleccion = new ArrayList<Socio>();
		String sql = "SELECT id, nombre, apellido1, apellido2, email, dni FROM socios ORDER BY id ASC; ";

		try (

				Connection con = ConnectionHelper.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery(); // lanza la consulta SQL y obtiene Resultados RS

		) {

			while (rs.next()) { // itero sobre los resultados de la consulta SQL

				// creamos un nuevo Objeto y lo seteamos con los valores del RS
				Socio s = new Socio();

				// cogemos los valores de las columnas
				int colId = rs.getInt("id");
				String colNombre = rs.getString("nombre");
				String colApellido1 = rs.getString("apellido1");
				String colApellido2 = rs.getString("apellido2");
				String colEmail = rs.getString("email");
				String colDni = rs.getString("dni");

				s.setId(colId);
				s.setNombre(colNombre);
				s.setApellido1(colApellido1);
				s.setApellido2(colApellido2);
				s.setEmail(colEmail);
				s.setDni(colDni);
				// añadir objeto al ArrayList
				coleccion.add(s);

			}
			// fin del bucle, ya no quedan mas lineas para leer

		} catch (Exception e) {
			e.printStackTrace();
		}

		return coleccion;
	}

	/**
	 * Filtra los participantes por nombre, apellidos o email
	 * 
	 * @param palabraBusqueda la palabra a buscar en las 3 columnas
	 * @return ArrayList con todos los participantes filtrados
	 */

	public static ArrayList<Socio> filtrar(String palabraBusqueda) {

		ArrayList<Socio> coleccion = new ArrayList<Socio>();
		String sql = "SELECT id, nombre, apellido1, apellido2, email, dni"
				+ " FROM socios WHERE nombre LIKE ? OR apellido1 LIKE ? OR email LIKE ? OR dni LIKE ? "
				+ " ORDER BY id ASC;";

		try {

			Connection con = ConnectionHelper.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);

			// sustituir los ? por las variables
			pst.setString(1, "%" + palabraBusqueda + "%");
			pst.setString(2, "%" + palabraBusqueda + "%");
			pst.setString(3, "%" + palabraBusqueda + "%");
			pst.setString(4, "%" + palabraBusqueda + "%");

			try (ResultSet rs = pst.executeQuery()) { // lanza la consulta SQL y obtiene Resultados RS

				while (rs.next()) {

					// creamos un nuevo Objeto y lo seteamos con los valores del RS
					Socio s = new Socio();

					// cogemos los valores de las columnas
					int colId = rs.getInt("id");
					String colNombre = rs.getString("nombre");
					String colApellido1 = rs.getString("apellido1");
					String colApellido2 = rs.getString("apellido2");
					String colEmail = rs.getString("email");
					String colDni = rs.getString("dni");

					s.setId(colId);
					s.setNombre(colNombre);
					s.setApellido1(colApellido1);
					s.setApellido2(colApellido2);
					s.setEmail(colEmail);
					s.setDni(colDni);

					// añadir objeto al arraylist
					coleccion.add(s);
				} // fin del bucle while
			} // fin del segundo try

		} catch (Exception e) {
			e.printStackTrace();
		}

		return coleccion;

	}

	/**
	 * Buscamos un participante por su identificador
	 * 
	 * @param id int identificador del participantes
	 * @return Participante con datos si encuentra, NULL si no lo encuentra
	 */

	public static Socio getById(int id) {

		Socio s = null;
		String sql = "SELECT id, nombre, apellido1, apellido2, email, dni FROM socios WHERE id = ?;";

		try (Connection con = ConnectionHelper.getConnection(); PreparedStatement pst = con.prepareStatement(sql)) {

			pst.setInt(1, id);
			try (ResultSet rs = pst.executeQuery()) {

				while (rs.next()) { // hemos encontrado participante por su id

					// cogemos los valores de las columnas
					int colId = rs.getInt("id");
					String colNombre = rs.getString("nombre");
					String colApellido1 = rs.getString("apellido1");
					String colApellido2 = rs.getString("apellido2");
					String colEmail = rs.getString("email");
					String colDni = rs.getString("dni");

					s = new Socio();
					s.setId(colId);
					s.setNombre(colNombre);
					s.setApellido1(colApellido1);
					s.setApellido2(colApellido2);
					s.setEmail(colEmail);
					s.setDni(colDni);

				} // fin del while
			} // fin del segundo try
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	/**
	 * Inserta un nuevo Participante
	 * 
	 * @param p Participante con los datos nuevos a insertar
	 * @return true si lo inserta, false en caso contrario
	 * @throws Exception si el email ya existe
	 */

	public static boolean agregarSocio(Socio socioinsertar) throws Exception {

		boolean agregado = false;
		String sql = "INSERT INTO socios (nombre, apellido1, apellido2, email, dni) VALUES (?,?,?,?,?);";

		try (

				Connection con = ConnectionHelper.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);

		) {
			// sustituimos las '?' de la SQL por las variables
			pst.setString(1, socioinsertar.getNombre());
			pst.setString(2, socioinsertar.getApellido1());
			pst.setString(3, socioinsertar.getApellido2());
			pst.setString(4, socioinsertar.getEmail());
			pst.setString(5, socioinsertar.getDni());

			// ejecuta la SQL contra la bbdd que nos hemos conectado
			int affectedRows = pst.executeUpdate();

			// comprobamos que se ha insertado una fila
			if (affectedRows == 1) {
				agregado = true;
			} // cierre if
		} // cierre try
		return agregado;
	}

	/**
	 * Modifica un Participante
	 * 
	 * @param p Participante con los datos a modificar, importante que tenga un id
	 * @return true si modifica, false en caso contrario
	 * @throws Exception si el email ya existe en la tabla
	 */

	public static boolean update(Socio s) throws Exception {

		boolean modificado = false;
		String sql = "UPDATE socios SET nombre = ?, apellido1 = ?, apellido2 = ?, email = ?, dni = ? WHERE id = ?;";

		try (

				Connection con = ConnectionHelper.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);

		) {

			pst.setString(1, s.getNombre());
			pst.setString(2, s.getApellido1());
			pst.setString(3, s.getApellido2());
			pst.setString(4, s.getEmail());
			pst.setString(5, s.getDni());
			pst.setInt(6, s.getId());

			if (pst.executeUpdate() == 1) {
				modificado = true;
			}

		}
		return modificado;

	}

}
