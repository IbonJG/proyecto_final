# Tienda de videojuegos

Proyecto Web Java EE siguiendo el patrón de MVC contra una bbdd SQLite para gestionar una tienda de videojuegos.

screenshot 1
![si no carga la url leemos esto](https://raw.githubusercontent.com/IbonJG/proyecto_final/master/capturas/ScrenshootREADME1.PNG)

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

## Configuración de la bbdd
Disponemos de una bbdd en Proyecto_final_bbdd/gamesawesome.db, con las tablas necesarias, ademas de algunos datos introducidos

screenshot bbdd

Para realizar la conexión a la bbdd cambiar el siguiente fichero src/main/java/modelo.dao/ConnectionHel.java

screenshot diagrama entidad relacion


##Ejecutar Proyecto

Al ser un proyecto web necesitamos un servidor de aplicaciones, en nuestro caso recomendamos Apache Tomcat 9.0.

Podemos navegar por los enlaces basicos y publicos de la cabecera como la pagina principal, una seccion de notias y diferentes enlaces a paginas oficiales sobre consolas y videojuegos.

Si queremos entrar en los paneles de gestion nos tendremos que loguear. Si nos logueamos como un usuario normal podremos acceder a nuestro perfil y ver la seccion de videojuegos 
en la que podremos buscar, alquilar o comprar un determinado videojuego.

Si nos logueamos como un usuario administrador, podremos hacer todo lo anterior mas ver una lista de socios y de empleados. Podremos dar de alta nuevos socios y nuevos videojuegos, 
asi como filtrar la busqueda, editarlos y eliminarlos. 

Tenemos dos roles diferentes dentro de socios:
Administrador 
Usuario Normal

##Estructura Clases del proyecto
Interesante consultar la documentacion JavaDoc API la cual esta accesible una vez ejecutado el proyecto como usuario administrador en la propia barra de navegación.

Intersante mirar los siguientes packages de java:
.controller.backoffice Controladores para el usuario administrador y para el usuario normal socio
.modelo Pojos o Clases para crear Objetos de java
.modelo.dao DAO para relacionar los Pojos de Java con las tablas dela BBDD
