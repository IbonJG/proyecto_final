package modelo.dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Clase para obtener la conexion con la bbdd
 * 
 * @author Ibon Juarrero
 * @version 1.0
 */
public class ConnectionHelper implements AutoCloseable {

	private static Connection con = null;
	private static final String DIRECCION_BBDD = "jdbc:sqlite:C:\\Desarrollo\\Proyecto_Final\\Proyecto_final_bbdd\\gamesawesome.db";

	public static Connection getConnection() throws Exception {

		// cargar el driver de sqlite
		Class.forName("org.sqlite.JDBC");

		con = DriverManager.getConnection(DIRECCION_BBDD);

		return con;
	}

	@Override
	public void close() throws Exception {

		if (con != null) {
			con.close();
		}

	}

}
