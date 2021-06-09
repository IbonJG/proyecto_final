<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS para bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <!-- fontawesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <!-- mi css-->
    <link rel="stylesheet" href="css/custom-css.css">
    <link rel="stylesheet" href="css/formularioAlta.css">
    <title>Games Awesome</title>
</head>
<body>
	<header class="navbar navbar-expand-md navbar-dark bd-navbar">
    <nav class="container-xxl flex-wrap flex-md-nowrap" aria-label="Main navigation">
        <div class="container-fluid">
          <a class="navbar-brand" href="index.jsp"><img src="imagenes/amazinggames.jpg" alt="" width="50" height="50" class="d-inline-block align-text-center"> Amazing Games</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="navbar-collapse collapse show" id="bdNavbar">
            <ul class="navbar-nav flex-row flex-wrap bd-navbar-nav pt-2 py-md-0">
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" aria-current="page" href="index.jsp">Home</a>
              </li>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="noticias.jsp">Noticias</a>
              </li>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="TiendaListarController">Tienda</a>
              </li>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="perfil.jsp">Perfil</a>
              </li>
              <!-- Visible solo para administradores -->
              <c:if test="${usuario_logeado.administrador == true }">
	              <li class="nav-item col-6 col-md-auto">
	                <a class="nav-link p-2 active" href="SociosListarController">Socios</a>
	              </li>
	              <li class="nav-item col-6 col-md-auto">
	                <a class="nav-link p-2" href="EmpleadosListarController">Empleados</a>
	              </li>
	              <li class="nav-item col-6 col-md-auto">
	                <a class="nav-link p-2" href="javadoc/index.html">JavaDoc</a>
	              </li>
	          </c:if>
            </ul>
            
            <hr class="d-md-none text-white-50">
            
            <ul class="navbar-nav flex-row flex-wrap ms-md-auto">
            <c:if test="${usuario_logeado == null }">
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="login.jsp"><i class="fas fa-user"></i> Login</a>
              </li>
              </c:if>
              <c:if test="${usuario_logeado != null }">
	         		<li class="nav-item col-6 col-md-auto">
	           			<b>${usuario_logeado.nombre}</b>
	           			<a class="nav-link p-2" href="logout"><i class="fas fa-times"></i><b> Cerrar Sesion</b></a>
	         		</li>
        		 </c:if>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="https://www.playstation.com" target="_blank"><i class="fab fa-playstation"></i></a>
              </li>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="https://www.xbox.com" target="_blank"><i class="fab fa-xbox"></i></a>
              </li>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="https://store.steampowered.com" target="_blank"><i class="fab fa-steam"></i></a>
              </li>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="https://www.twitch.tv" target="_blank"><i class="fab fa-twitch"></i></a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
  </header>
	  <br>
	  <main class="container w-50">
	        <h1>${titulo}</h1>
	        
	        
	       <jsp:include page="mensajes.jsp"></jsp:include>
	        
	        
	        <form action="SociosEditarController" method="post">
				
				<p class="text-danger">ID esta oculto</p>
				<input 	type="text"
						name="id"
						id="id"
						value="${socio.id}"
						required
						readonly
						class="form-control">
				<br>
	            <label for="nombre" class="form-label">Nombre:</label>
	            <input type="text" 
	                   name="nombre" 
	                   id="nombre"
	                   value="${socio.nombre}"
	                   required 
	                   autofocus 
	                   class="form-control" 
	                   placeholder="Nombre sin apellidos">
				<br>
	            <label for="apellido1" class="form-label">Primer Apellido:</label>
	            <input type="text" 
	                    name="apellido1"
	                    id="apellido1"
	                    value="${socio.apellido1}"
	                    required                      
	                    class="form-control" 
	                    placeholder="escribe el primer apellido">
	            <br>
	            <label for="apellido2" class="form-label">Segundo Apellido:</label>
	            <input type="text" 
	                    name="apellido2"
	                    id="apellido2"
	                    value="${socio.apellido2}"
	                    required                      
	                    class="form-control" 
	                    placeholder="escribe el segundo apellido">
	            <br>   
	            <label for="email" class="form-label">Email:</label>
	            <input type="email" 
	                    name="email"
	                    id="email"
	                    value="${socio.email}" 
	                    required                      
	                    class="form-control" 
	                    placeholder="socio@correo.com">
	            <br>   
	            <label for="dni" class="form-label">DNI:</label>
	            <input type="text" 
	                    name="dni"
	                    id="dni"
	                    value="${socio.dni}" 
	                    required                      
	                    class="form-control" 
	                    placeholder="dni">
	            <br>
	            <div class="d-grid gap-2 col-6 mx-auto">
	            <input type="submit" value="${(socio.id == 0) ? 'Crear' : 'Editar' }" class="btn btn-block btn-primary mt-4">
	        	</div>
	        </form>
	        <br>
	    </main>   
	<footer>
	    <section id="footer">
	      <div class="container">
	        <div class="row text-center text-xs-center text-sm-left text-md-left">
	          
	          <div class="col-xs-12 col-sm-4 col-md-4">
	            <h5>Quick links</h5>
	            <ul class="list-unstyled quick-links">
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>Home</a></li>
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>About</a></li>
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>FAQ</a></li>
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>Get Started</a></li>
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>Videos</a></li>
	            </ul>
	          </div>
	          <div class="col-xs-12 col-sm-4 col-md-4">
	            <h5>Quick links</h5>
	            <ul class="list-unstyled quick-links">
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>Home</a></li>
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>About</a></li>
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>FAQ</a></li>
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>Get Started</a></li>
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>Videos</a></li>
	            </ul>
	          </div>
	          <div class="col-xs-12 col-sm-4 col-md-4">
	            <h5>Quick links</h5>
	            <ul class="list-unstyled quick-links">
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>Home</a></li>
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>About</a></li>
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>FAQ</a></li>
	              <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fas fa-angle-double-right"></i>Get Started</a></li>
	              <li><a href="https://wwwe.sunlimetech.com" title="Design and developed by"><i class="fas fa-angle-double-right"></i>Imprint</a></li>
	            </ul>
	          </div>
	        </div>
	        <div class="row">
	          <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
	            <ul class="list-unstyled list-inline social text-center">
	              <li class="list-inline-item"><a href="https://es-es.facebook.com" target="_blank"><i class="fab fa-facebook"></i></a></li>
	              <li class="list-inline-item"><a href="https://twitter.com/?lang=es" target="_blank"><i class="fab fa-twitter"></i></a></li>
	              <li class="list-inline-item"><a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a></li>
	              <li class="list-inline-item"><a href="https://www.instagram.com" target="_blank"><i class="fab fa-youtube"></i></a></li>
	              <li class="list-inline-item"><a href="#" target="_blank"><i class="fas fa-envelope"></i></a></li>
	            </ul>
	          </div>
	          <hr>
	        </div>	
	        <div class="row">
	          <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
	            <p><u><a href="https://www.nationaltransaction.com/">National Transaction Corporation</a></u> is a Registered MSP/ISO of Elavon, Inc. Georgia [a wholly owned subsidiary of U.S. Bancorp, Minneapolis, MN]</p>
	            <p class="h6">© All right Reversed.<a class="text-green ml-2" href="https://www.sunlimetech.com" target="_blank">Sunlimetech</a></p>
	          </div>
	          <hr>
	        </div>	
	      </div>
	    </section>
	  </footer>


</body>
</html>