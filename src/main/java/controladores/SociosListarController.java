package controladores;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Socio;
import modelo.dao.SocioDAO;

/**
 * Servlet implementation class SociosListarController
 */
@WebServlet("/SociosListarController")
public class SociosListarController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String filtro = request.getParameter("filtro");
		ArrayList<Socio> lista = new ArrayList<Socio>();

		if (filtro == null) {
			lista = SocioDAO.getAll();

		} else {
			lista = SocioDAO.filtrar(filtro);

		}

		request.setAttribute("filtro", filtro);
		request.setAttribute("socios", lista);
		request.getRequestDispatcher("socios.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
