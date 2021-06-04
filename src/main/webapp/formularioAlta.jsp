<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<main class="container w-50">
	        <h1>${titulo}</h1>
	        <form action="SociosEditarController" method="post">
				
				<p class="text-danger">ID esta oculto</p>
				<input 	type="text"
						name="id"
						id="id"
						value="${socio.id}"
						required
						readonly
						class="form-control">
				
	
	            <label for="nombre" class="form-label">Nombre:</label>
	            <input type="text" 
	                   name="nombre" 
	                   id="nombre"
	                   value="${socio.nombre}"
	                   required 
	                   autofocus 
	                   class="form-control" 
	                   placeholder="Nombre sin apellidos">
	
	            <label for="apellido1" class="form-label">Apellido1:</label>
	            <input type="text" 
	                    name="apellido1"
	                    id="apellido1"
	                    value="${socio.apellido1}"
	                    required                      
	                    class="form-control" 
	                    placeholder="escribe el primer apellido">
	                    
	            <label for="apellido2" class="form-label">Apellido2:</label>
	            <input type="text" 
	                    name="apellido2"
	                    id="apellido2"
	                    value="${socio.apellido2}"
	                    required                      
	                    class="form-control" 
	                    placeholder="escribe el segundo apellido">
	
	                    
	            <label for="email" class="form-label">Email:</label>
	            <input type="email" 
	                    name="email"
	                    id="email"
	                    value="${socio.email}" 
	                    required                      
	                    class="form-control" 
	                    placeholder="tu@correo.com">
	                    
	            <label for="dni" class="form-label">DNI:</label>
	            <input type="text" 
	                    name="dni"
	                    id="dni"
	                    value="${socio.dni}" 
	                    required                      
	                    class="form-control" 
	                    placeholder="dni">
	
	            <input type="submit" value="${(socio.id == 0) ? 'Crear' : 'Editar' }" class="btn btn-block btn-primary mt-4">
	        </form>
	        
	    </main>   



</body>
</html>