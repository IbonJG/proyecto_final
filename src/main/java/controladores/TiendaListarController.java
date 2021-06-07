package controladores;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Tienda;
import modelo.dao.TiendaDAO;

/**
 * Servlet implementation class TiendaListarController
 */
@WebServlet("/TiendaListarController")
public class TiendaListarController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArrayList<Tienda> lista = new ArrayList<Tienda>();

		lista = TiendaDAO.getAll();

		request.setAttribute("tienda", lista);
		request.getRequestDispatcher("tienda.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
