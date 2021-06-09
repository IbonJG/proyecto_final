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
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String mensaje = "";
		String vista = "";

		HttpSession session = request.getSession();
		// recoger parametros del formulario login
		String email = request.getParameter("nombre");
		String dni = request.getParameter("contrasenia");

		// logica de negocio

		Socio socio = SocioDAO.login(email, dni);

		if (socio != null) {
			mensaje = "Bienvenido";

			// comprobar el ROL
			if (socio.isAdministrador()) {
				vista = "EmpleadosListarController"; // nombre del controlador, no quiero ir a la JSP
			} else {
				vista = "perfil.jsp";
			}
			// guardamos el usuario logeado en session como un atributo
			// HttpSession session = request.getSession();
			session.setAttribute("usuario_logeado", socio);
			session.setMaxInactiveInterval(60 * 5); // 5 min
		} else {
			mensaje = "Credenciales incorrectas, prueba de nuevo";
			vista = "login.jsp";
		}

		// enviar atributos para vistar
		session.setAttribute("mensajeTipo", "success");
		session.setAttribute("mensaje", mensaje);

		// Ir a una vista

		request.getRequestDispatcher(vista).forward(request, response);
	}

}
