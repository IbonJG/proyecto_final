package controladores;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Socio;
import modelo.dao.SocioDAO;

/**
 * Servlet implementation class SociosEditarController
 */
@WebServlet("/SociosEditarController")
public class SociosEditarController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		Socio s = new Socio();
		String titulo = "Crear Nuevo Socio";

		if (id > 0) {

			titulo = "Modificar Socio";
			s = SocioDAO.getById(id);
		}

		request.setAttribute("titulo", titulo);
		request.setAttribute("socio", s);
		request.getRequestDispatcher("formularioAlta.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		// Recoger parametros del formulario
		int id = Integer.parseInt(request.getParameter("id"));
		String nombre = request.getParameter("nombre");
		String apellido1 = request.getParameter("apellido1");
		String apellido2 = request.getParameter("apellido2");
		String email = request.getParameter("email");
		String dni = request.getParameter("dni");

		// crear participante con los datos del formulario POJO
		Socio s = new Socio();
		s.setId(id);
		s.setNombre(nombre);
		s.setApellido1(apellido1);
		s.setApellido2(apellido2);
		s.setEmail(email);
		s.setDni(dni);

		try {
			if (id == 0) {
				SocioDAO.agregarSocio(s);
			} else {
				SocioDAO.update(s);
			}

			session.setAttribute("mensajeTipo", "success");
			session.setAttribute("mensaje", "Datos Guardados");
			request.getRequestDispatcher("SociosListarController").forward(request, response);

		} catch (Exception e) {
			session.setAttribute("mensajeTipo", "danger");
			session.setAttribute("mensaje", "El email esta repetido");
			request.setAttribute("titulo", "Modificar Socio");
			request.setAttribute("socio", s);
			request.getRequestDispatcher("formularioAlta.jsp").forward(request, response);
		}

	}
}
