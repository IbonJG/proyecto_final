package controladores.backoffice;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Empleado;
import modelo.dao.EmpleadoDAO;

/**
 * Servlet implementation class EmpleadosListarController
 */
@WebServlet("/backoffice/EmpleadosListarController")
public class EmpleadosListarController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArrayList<Empleado> lista = new ArrayList<Empleado>();

		lista = EmpleadoDAO.getAll();

		request.setAttribute("empleados", lista);
		request.getRequestDispatcher("empleados.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
