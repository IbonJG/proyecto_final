<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%

	/**
		 Desde los controladores hay que guardar dos atributos en session		
		 mensaje: es el texto a mostrar
		 mensajeTipo: es para darle el color, usamos los tipos de boostrap, mirar en  https://getbootstrap.com/docs/4.0/components/alerts/
	 
	*/ 
	
	
%>


<c:if test="${not empty mensaje}">
	<p class="bg-${mensajeTipo} p-2 text-white">${mensaje}</p>
</c:if>	

<%
	// despues de pintarlo, lo borramos de session
	session.removeAttribute("mensaje");

%>