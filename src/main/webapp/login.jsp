<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
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
        <link rel="stylesheet" href="css/login.css">
        <title>Games Awesome</title>
    </head>
<body>
<%-- 	<jsp:include page="mensajes.jsp"></jsp:include> --%>
    <main class="container w-25">
	    <h1>Iniciar Sesion</h1><br>
	    <form action="login" method="post">
	        <label for="nombre" class="form-label"><i class="fas fa-user"></i> Usuario</label>
	        <input type="text" name="nombre" required autofocus class="form-control" placeholder="direccion@correo"><br>
	        
	        <label for="password" class="form-label"><i class="fas fa-key"></i> Contraseña</label>
	        <input type="password" name="contrasenia" maxlength="12" required class="form-control" placeholder="dni"><br>
            <div class="d-grid gap-2 col-6 mx-auto">
                <input type="submit" value="Enviar" class="btn btn-block btn-dark mt-1 mb-3">
            </div>
	    </form>
    </main>
</body>
</html>