package controladores.backoffice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.SocioDAO;

/**
 * Servlet implementation class SociosEliminarController
 */
@WebServlet("/backoffice/SociosEliminarController")
public class SociosEliminarController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		try {

			SocioDAO.delete(id);

			request.setAttribute("mensajeTipo", "warning");
			request.setAttribute("mensaje", "Socio Eliminado");

		} catch (Exception e) {

			request.setAttribute("mensajeTipo", "danger");
			request.setAttribute("mensaje", "No se puede eliminar");
			e.printStackTrace();
		}

		request.getRequestDispatcher("SociosListarController").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
