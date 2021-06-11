# Tienda de videojuegos

Proyecto Web Java EE siguiendo el patrón de MVC contra una bbdd SQLite para gestionar una tienda de videojuegos.

Pagina Principal
![pagina principal](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/principal.PNG)

- Técnologia
- Maven 4.0.0
- Java 8
- Java Servlet Api 3.1.0
- JSP 2.2
- JSTL 1.2
- Javax Validation Api 1.1
- Bootstrap 5.0.0
- FontAwesome 5.15.3
- SQLite
Para ver mas detalles sobre las depencias de este proyecto mirar el pom.xml

# # Configuración de la bbdd
Disponemos de una bbdd en Proyecto_final_bbdd/gamesawesome.db, con las tablas necesarias, ademas de algunos datos introducidos

Estructura bbdd
![Estructura bbdd](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/ScrenshootREADME1.PNG)
Para realizar la conexión a la bbdd cambiar el siguiente fichero src/main/java/modelo.dao/ConnectionHelper.java


##Ejecutar Proyecto

Al ser un proyecto web necesitamos un servidor de aplicaciones, en nuestro caso recomendamos Apache Tomcat 9.0.

Podemos navegar por los enlaces basicos y publicos de la cabecera como la pagina principal, una seccion de notias y diferentes enlaces a paginas oficiales sobre consolas y videojuegos.


Si queremos entrar en los paneles de gestion nos tendremos que loguear. Si nos logueamos como un usuario normal podremos acceder a nuestro perfil y ver la seccion de videojuegos 
en la que podremos buscar, alquilar o comprar un determinado videojuego.

Login

![Login](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/login.PNG)

Perfil

![Perfil](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/perfil.PNG)

Seccion tienda

![Tienda](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/tienda.PNG)

Si nos logueamos como un usuario administrador, podremos hacer todo lo anterior mas ver una lista de socios y de empleados. Podremos dar de alta nuevos socios y nuevos videojuegos, 
asi como filtrar la busqueda, editarlos y eliminarlos. 

Socios

![Socios](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/socios.PNG)

Empleados

![EmpleadosS](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/empleados.PNG)

Crear nuevo socio

![Crear nuevo socio](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/sociocrear.PNG)

Editar socio

![Editar socio](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/socioeditar.PNG)

Eliminar socio

![Eliminar socio](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/socioseliminar.PNG)

Buscar socio

![Buscar socio](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/sociosfiltrar.PNG)

Tenemos dos roles diferentes dentro de socios:  
Administrador que podemos entrar con:   
usuario:ibon@juarrero  
contraseña:12345  
Usuario Normal que podemos entrar con:   
usuario david@quiroga  
contraseña:11111  

##Estructura Clases del proyecto
Interesante consultar la documentacion JavaDoc API la cual esta accesible una vez ejecutado el proyecto como usuario administrador en la propia barra de navegación.

Javadoc

![Javadoc](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/javadoc.PNG)


Intersante mirar los siguientes packages de java:
.controller.backoffice Controladores para el usuario administrador y para el usuario normal socio
.modelo Pojos o Clases para crear Objetos de java
.modelo.dao DAO para relacionar los Pojos de Java con las tablas dela BBDD

Explorador del proyecto

![Explorador del proyecto](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/exploradorproyecto.PNG)

