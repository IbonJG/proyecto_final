<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"  %>
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
    <link rel="stylesheet" href="css/socios.css">
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
                    <a class="nav-link p-2" href="tienda.jsp">Tienda</a>
                  </li>
                  <li class="nav-item col-6 col-md-auto">
                    <a class="nav-link p-2" href="#">Disabled</a>
                  </li>
                  <li class="nav-item col-6 col-md-auto">
                    <a class="nav-link p-2 active" href="SociosListarController">Socios</a>
                  </li>
                </ul>
                
                <hr class="d-md-none text-white-50">
                
                <ul class="navbar-nav flex-row flex-wrap ms-md-auto">
                  <li class="nav-item col-6 col-md-auto">
                    <a class="nav-link p-2" href="login.html"><i class="fas fa-user"></i> Login</a>
                  </li>
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
      <main class="container">
        <h1>Lista de Socios</h1>
        
         <jsp:include page="mensajes.jsp"></jsp:include>
        
        <br>
        <a href="SociosEditarController?id=0&formularioAlta.jsp">Añadir Nuevo Socio</a>
        <br><br>
        <form action="SociosListarController" method="get">
          <label for="filtrar" class="form-label">Buscar Socio</label>
          <input type="text" name="filtro" value="${filtro}" class="form-control" placeholder="Flitrar por nombre, apellido o email">
          <br>
          <div class="d-grid gap-2 col-6 mx-auto">
          <input type="submit" value="Filtrar" class="btn btn-block btn-primary">
          </div>
          <br><br>
      </form>

      <table class="table table-striped table-hover">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Nombre</th>
              <th scope="col">Apellido1</th>
              <th scope="col">Apellido2</th>
              <th scope="col">Email</th>
              <th scope="col">DNI</th>
              <th scope="col">Editar</th>
              <th scope="col">Eliminar</th>
            </tr>
          </thead>
          <tbody>
          <!-- 
        	recorrer atributo con la lista de particpantes y pintar TR
        	items="$ { participantes}" => Nombre del atributo que nos envia en controlador
        	var="pIteracion"           => nombre de la variable que iteramos que es un Participante 
        
        	${p.nombre} es lo mismo que p.getNombre(), es una forma abreviada
        
        	for ( Participante pIteracion : participantes )
        	
        -->
        <c:forEach var="sIteracion" items="${socios}">
	          <tr>
	            <th scope="row">${sIteracion.id}</th>
	            <td>${sIteracion.nombre}</td>
	            <td>${sIteracion.apellido1}</td>
	            <td>${sIteracion.apellido2}</td>
	            <td>${sIteracion.email}</td>
	            <td>${sIteracion.dni}</td>
	            <td><a href="SociosEditarController?id=${sIteracion.id}&formularioAlta.jsp" class="btn btn-primary">Editar</a></td>
 	            <td><a href="SociosEliminarController?id=${sIteracion.id}" onclick="confirmarEliminacion('${sIteracion.nombre}')"  class="btn btn-danger">Eliminar</a></td>
	          </tr>
	         </c:forEach> 
	         
        <!-- terminamos de recorrer -->
          
          
          </tbody>
      </table>
	 
	 <script>
          	
          	function confirmarEliminacion(nombre){
          		
          		if (window.confirm("¿SEGURO QUE QUIERES ELIMINAR A "+ nombre + " ?")) {
          			console.debug('Eliminamos');
					
				} else {
	
					event.preventDefault();//prevenir que el ancla haga su funcion
					console.debug('No eliminamos')
					
				}
          	}
          
          </script>


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