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
    <link rel="stylesheet" href="css/noticias.css">
        <!-- <link rel="stylesheet" href="css/login.css">-->
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
                <a class="nav-link p-2 active" href="noticias.jsp">Noticias</a>
              </li>
              <!-- Visible solo para administradores y socios logueados -->
              <c:if test="${usuario_logeado != null }" >
	              <li class="nav-item col-6 col-md-auto">
	                <a class="nav-link p-2" href="backoffice/TiendaListarController">Tienda</a>
	              </li>
	              <li class="nav-item col-6 col-md-auto">
	                <a class="nav-link p-2" href="backoffice/perfil.jsp">Perfil</a>
	              </li>
              </c:if> 
              
              <!-- Visible solo para administradores -->
              <c:if test="${usuario_logeado.administrador == true }">
	              <li class="nav-item col-6 col-md-auto">
	                <a class="nav-link p-2" href="backoffice/SociosListarController">Socios</a>
	              </li>
	              <li class="nav-item col-6 col-md-auto">
	                <a class="nav-link p-2" href="backoffice/EmpleadosListarController">Empleados</a>
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
          <main>
<!--Container-->
<div class="container">
    <div class="row mb-2">
        <div class="col-12 text-center pt-3">
            <h1>Ultimas Noticias</h1>
            <p>This is a basic bootstrap sorce code for make responsive magazine big grid cover with carousel</p>
            <h4>You like this snippet ? click like button</h4>
        </div>
    </div>
    
    <!--Start code-->
    <div class="row">
        <div class="col-12 pb-5">
            <!--SECTION START-->
            <section class="row">
                <!--Start slider news-->
                <div class="col-12 col-md-6 pb-0 pb-md-3 pt-2 pr-md-1">
                    <div id="featured" class="carousel slide carousel" data-ride="carousel">
                        <!--dots navigate-->
                        <ol class="carousel-indicators top-indicator">
                            <li data-target="#featured" data-slide-to="0" class="active"></li>
                            <li data-target="#featured" data-slide-to="1"></li>
                            <li data-target="#featured" data-slide-to="2"></li>
                            <li data-target="#featured" data-slide-to="3"></li>
                        </ol>
                        
                        <!--carousel inner-->
                        <div class="carousel-inner">
                            <!--Item slider-->
                            <div class="carousel-item active">
                                <div class="card border-0 rounded-0 text-light overflow zoom">
                                    <div class="position-relative">
                                        <!--thumbnail img-->
                                        <div class="ratio_left-cover-1 image-wrapper">
                                            <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                                <img class="img-fluid w-100"
                                                     src="https://bootstrap.news/source/img1.jpg"
                                                     alt="Bootstrap news template">
                                            </a>
                                        </div>
                                        <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                            <!--title-->
                                            <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                                <h2 class="h3 post-title text-white my-1">Bootstrap 4 template news portal magazine perfect for news site</h2>
                                            </a>
                                            <!-- meta title -->
                                            <div class="news-meta">
                                                <span class="news-author">by <a class="text-white font-weight-bold" href="../category/author.html">Jennifer</a></span>
                                                <span class="news-date">Oct 22, 2019</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!--Item slider-->
                            <div class="carousel-item">
                                <div class="card border-0 rounded-0 text-light overflow zoom">
                                    <div class="position-relative">
                                        <!--thumbnail img-->
                                        <div class="ratio_left-cover-1 image-wrapper">
                                            <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                                <img class="img-fluid w-100"
                                                     src="https://bootstrap.news/source/img2.jpg"
                                                     alt="Bootstrap news theme">
                                            </a>
                                        </div>
                                        <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                            <!--title-->
                                            <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                                <h2 class="h3 post-title text-white my-1">Walmart shares up 10% on online sales lift</h2>
                                            </a>
                                            <!-- meta title -->
                                            <div class="news-meta">
                                                <span class="news-author">by <a class="text-white font-weight-bold" href="../category/author.html">Jennifer</a></span>
                                                <span class="news-date">Oct 22, 2019</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!--Item slider-->
                            <div class="carousel-item">
                                <div class="card border-0 rounded-0 text-light overflow zoom">
                                    <div class="position-relative">
                                        <!--thumbnail img-->
                                        <div class="ratio_left-cover-1 image-wrapper">
                                            <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                                <img class="img-fluid w-100"
                                                     src="https://bootstrap.news/source/img3.jpg"
                                                     alt="Bootstrap blog template">
                                            </a>
                                        </div>
                                        <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                            <!--title-->
                                            <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                                <h2 class="h3 post-title text-white my-1">Bank chief warns on Brexit staff moves to other company</h2>
                                            </a>
                                            <!-- meta title -->
                                            <div class="news-meta">
                                                <span class="news-author">by <a class="text-white font-weight-bold" href="../category/author.html">Jennifer</a></span>
                                                <span class="news-date">Oct 22, 2019</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!--Item slider-->
                            <div class="carousel-item">
                                <div class="card border-0 rounded-0 text-light overflow zoom">
                                    <div class="position-relative">
                                        <!--thumbnail img-->
                                        <div class="ratio_left-cover-1 image-wrapper">
                                            <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                                <img class="img-fluid w-100"
                                                     src="https://bootstrap.news/source/img4.jpg"
                                                     alt="Bootstrap portal template">
                                            </a>
                                        </div>
                                        <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                            <!--title-->
                                            <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                                <h2 class="h3 post-title text-white my-1">The world's first floating farm making waves in Rotterdam</h2>
                                            </a>
                                            <!-- meta title -->
                                            <div class="news-meta">
                                                <span class="news-author">by <a class="text-white font-weight-bold" href="../category/author.html">Jennifer</a></span>
                                                <span class="news-date">Oct 22, 2019</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end item slider-->
                        </div>
                        <!--end carousel inner-->
                    </div>
                    
                    <!--navigation-->
                    <a class="carousel-control-prev" href="#featured" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#featured" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <!--End slider news-->
                
                <!--Start box news-->
                <div class="col-12 col-md-6 pt-2 pl-md-1 mb-3 mb-lg-4">
                    <div class="row">
                        <!--news box-->
                        <div class="col-6 pb-1 pt-0 pr-1">
                            <div class="card border-0 rounded-0 text-white overflow zoom">
                                <div class="position-relative">
                                    <!--thumbnail img-->
                                    <div class="ratio_right-cover-2 image-wrapper">
                                        <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                            <img class="img-fluid"
                                                 src="imagenes/Rockstar_Games_Logo.svg.png"
                                                 alt="simple blog template bootstrap">
                                        </a>
                                    </div>
                                    <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                        <!-- category -->
                                        <a class="p-1 badge badge-primary rounded-0" href="https://www.rockstargames.com/es/newswire#_ga=2.4854515.1139986811.1622629858-413803661.1622629858">Rockstar Games</a>

                                        <!--title-->
                                        <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                            <h2 class="h5 text-white my-1">Ultimas noticias</h2>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!--news box-->
                        <div class="col-6 pb-1 pl-1 pt-0">
                            <div class="card border-0 rounded-0 text-white overflow zoom">
                                <div class="position-relative">
                                    <!--thumbnail img-->
                                    <div class="ratio_right-cover-2 image-wrapper">
                                        <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                            <img class="img-fluid"
                                                 src="https://bootstrap.news/source/img6.jpg"
                                                 alt="bootstrap templates for blog">
                                        </a>
                                    </div>
                                    <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                        <!-- category -->
                                        <a class="p-1 badge badge-primary rounded-0" href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">Motocross</a>
                                        <!--title-->
                                        <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                            <h2 class="h5 text-white my-1">Three myths about Florida elections recount</h2>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!--news box-->
                        <div class="col-6 pb-1 pr-1 pt-1">
                            <div class="card border-0 rounded-0 text-white overflow zoom">
                                <div class="position-relative">
                                    <!--thumbnail img-->
                                    <div class="ratio_right-cover-2 image-wrapper">
                                        <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                            <img class="img-fluid"
                                                 src="https://bootstrap.news/source/img7.jpg"
                                                 alt="bootstrap blog wordpress theme">
                                        </a>
                                    </div>
                                    <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                        <!-- category -->
                                        <a class="p-1 badge badge-primary rounded-0" href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">Fitness</a>
                                        <!--title-->
                                        <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                            <h2 class="h5 text-white my-1">Finding Empowerment in Two Wheels and a Helmet</h2>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!--news box-->
                        <div class="col-6 pb-1 pl-1 pt-1">
                            <div class="card border-0 rounded-0 text-white overflow zoom">
                                <div class="position-relative">
                                    <!--thumbnail img-->
                                    <div class="ratio_right-cover-2 image-wrapper">
                                        <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                            <img class="img-fluid"
                                                 src="https://bootstrap.news/source/img8.jpg"
                                                 alt="blog website templates bootstrap">
                                        </a>
                                    </div>
                                    <div class="position-absolute p-2 p-lg-3 b-0 w-100 bg-shadow">
                                        <!-- category -->
                                        <a class="p-1 badge badge-primary rounded-0" href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">Adventure</a>
                                        <!--title-->
                                        <a href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
                                            <h2 class="h5 text-white my-1">Ditch receipts and four other tips to be a shopper</h2>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end news box-->
                    </div>
                </div>
                <!--End box news-->
            </section>
            <!--END SECTION-->
        </div>
    </div>
    <!--end code-->
    
    <div class="row mb-4">
        <div class="col-12 text-center">
            <p>Design by Ari Budin <a target="_blank" href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">Bootstrap.News</a> | images by pixabay and pexels</p>
        </div>
    </div>
</div>
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
          </footer>
    </body>
    </html>