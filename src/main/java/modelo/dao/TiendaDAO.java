package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import modelo.Genero;
import modelo.Plataforma;
import modelo.Tienda;

public class TiendaDAO {

	/**
	 * Consulta la tabla 'socios' para recuperar todos y devolverlos en una
	 * coleccion
	 * 
	 * @return Lista con todos los socios de la bbdd
	 * @throws Exception
	 */

	public static ArrayList<Tienda> getAll() {

		ArrayList<Tienda> coleccion = new ArrayList<Tienda>();
		String sql = "SELECT * FROM videojuegos as v\r\n"
				+ "			INNER JOIN genero as g ON v.id_genero = g.id \r\n"
				+ "			INNER JOIN videojuego_plataforma as vp ON v.id = vp.id_videojuego\r\n"
				+ "			INNER JOIN plataforma as p ON vp.id_plataforma = p.id; ";

		try (

				Connection con = ConnectionHelper.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery(); // lanza la consulta SQL y obtiene Resultados RS

		) {

			while (rs.next()) { // itero sobre los resultados de la consulta SQL

				// creamos un nuevo Objeto y lo seteamos con los valores del RS
				Tienda t = new Tienda();

				// cogemos los valores de las columnas
				int colId = rs.getInt("videojuego_id");
				String colTitulo = rs.getString("titulo");
				int colPrecio_alquiler = rs.getInt("precio_alquiler");
				int colPrecio_venta = rs.getInt("precio_venta");

				t.setId(colId);
				t.setTitulo(colTitulo);
				t.setPrecio_alquiler(colPrecio_alquiler);
				t.setPrecio_comprar(colPrecio_venta);

				// genero
				int colId_genero = rs.getInt("genero_id");
				String nombre = rs.getString("nombre");

				Genero g = new Genero();
				g.setId(colId_genero);
				g.setNombre(nombre);

				t.setGenero(g);

				// plataforma
				int ColId_plataforma = rs.getInt("plataforma_id");
				String nombre_plat = rs.getString("nombre");

				Plataforma p = new Plataforma();
				p.setId(ColId_plataforma);
				p.setNombre(nombre_plat);

				t.setPlataforma(p);

				// añadir objeto al ArrayList
				coleccion.add(t);

			}
			// fin del bucle, ya no quedan mas lineas para leer

		} catch (Exception e) {
			e.printStackTrace();
		}

		return coleccion;
	}

}
