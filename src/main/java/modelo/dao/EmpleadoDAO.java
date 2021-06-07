package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import modelo.Empleado;

public class EmpleadoDAO {

	/**
	 * Consulta la tabla 'socios' para recuperar todos y devolverlos en una
	 * coleccion
	 * 
	 * @return Lista con todos los socios de la bbdd
	 * @throws Exception
	 */

	public static ArrayList<Empleado> getAll() {

		ArrayList<Empleado> coleccion = new ArrayList<Empleado>();
		String sql = "SELECT id, nombre, apellido, rol FROM empleados ORDER BY id ASC; ";

		try (

				Connection con = ConnectionHelper.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery(); // lanza la consulta SQL y obtiene Resultados RS

		) {

			while (rs.next()) { // itero sobre los resultados de la consulta SQL

				// creamos un nuevo Objeto y lo seteamos con los valores del RS
				Empleado e = new Empleado();

				// cogemos los valores de las columnas
				int colId = rs.getInt("id");
				String colNombre = rs.getString("nombre");
				String colApellido = rs.getString("apellido");
				String colRol = rs.getString("rol");

				e.setId(colId);
				e.setNombre(colNombre);
				e.setApellido(colApellido);
				e.setRol(colRol);

				// añadir objeto al ArrayList
				coleccion.add(e);

			}
			// fin del bucle, ya no quedan mas lineas para leer

		} catch (Exception e) {
			e.printStackTrace();
		}

		return coleccion;
	}

}
