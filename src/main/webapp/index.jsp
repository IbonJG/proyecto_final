<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                <a class="nav-link p-2 active" aria-current="page" href="index.jsp">Home</a>
              </li>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="noticias.jsp">Noticias</a>
              </li>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="TiendaListarController">Tienda</a>
              </li>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="#">Disabled</a>
              </li>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="SociosListarController">Socios</a>
              </li>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="EmpleadosListarController">Empleados</a>
              </li>
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="javadoc/index.html">JavaDoc</a>
              </li>
            </ul>
            
            <hr class="d-md-none text-white-50">
            
            <ul class="navbar-nav flex-row flex-wrap ms-md-auto">
              <li class="nav-item col-6 col-md-auto">
                <a class="nav-link p-2" href="login.jsp"><i class="fas fa-user"></i> Login</a>
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
  <main>
  <br><br>
    <div id="carouselExampleIndicators" class="carousel slide container" data-bs-ride="carousel" >
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="imagenes/c018ec69af05fa107584a81d7ddf5bf2.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="imagenes/zeus-s3-wz-social-share.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="imagenes/fifa-21-kylian-mbappe_5y8kt6rcv8tf1kifrjd2ku44c.jpg" class="d-block w-100" alt="...">
        </div>
      	<div class="carousel-item">
          <img src="imagenes/Red_Dead_Redemption_2_Men_Rifles_Arthur_Morgan_Hat_580584_1920x1080.jpg" class="d-block w-100" alt="...">
        </div>
       </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    <br><br>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit impedit dolores iusto libero repudiandae sequi totam accusamus nihil fuga tempore temporibus, maiores quibusdam quidem, quam nostrum. Cum rerum voluptate iste!
      Laboriosam eaque sit dignissimos. Suscipit cumque odit consequatur repudiandae dignissimos aliquam, minus accusamus molestiae illo dolor culpa tenetur enim eveniet quas repellat aperiam, impedit possimus incidunt animi. Nobis, iste debitis!
      In quidem eius accusamus ratione esse et veniam aut assumenda reiciendis, repudiandae placeat mollitia non architecto libero quibusdam voluptatem corrupti ipsa id sunt quod minima pariatur labore cum optio. Qui.
      Cupiditate voluptatibus quae, sit, explicabo reiciendis dolore maiores eos impedit est harum quidem itaque praesentium, necessitatibus cumque qui ut distinctio aut labore. Beatae sed aspernatur eum distinctio, blanditiis nisi autem.
      Perspiciatis nemo tempore ipsa distinctio! Facere, sint quis inventore iste asperiores magni repudiandae iusto ipsum quas. Soluta, qui vitae? Nihil natus vero voluptas saepe nam necessitatibus totam eos, veniam tenetur.
    </p>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit impedit dolores iusto libero repudiandae sequi totam accusamus nihil fuga tempore temporibus, maiores quibusdam quidem, quam nostrum. Cum rerum voluptate iste!
      Laboriosam eaque sit dignissimos. Suscipit cumque odit consequatur repudiandae dignissimos aliquam, minus accusamus molestiae illo dolor culpa tenetur enim eveniet quas repellat aperiam, impedit possimus incidunt animi. Nobis, iste debitis!
      In quidem eius accusamus ratione esse et veniam aut assumenda reiciendis, repudiandae placeat mollitia non architecto libero quibusdam voluptatem corrupti ipsa id sunt quod minima pariatur labore cum optio. Qui.
      Cupiditate voluptatibus quae, sit, explicabo reiciendis dolore maiores eos impedit est harum quidem itaque praesentium, necessitatibus cumque qui ut distinctio aut labore. Beatae sed aspernatur eum distinctio, blanditiis nisi autem.
      Perspiciatis nemo tempore ipsa distinctio! Facere, sint quis inventore iste asperiores magni repudiandae iusto ipsum quas. Soluta, qui vitae? Nihil natus vero voluptas saepe nam necessitatibus totam eos, veniam tenetur.
    </p>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit impedit dolores iusto libero repudiandae sequi totam accusamus nihil fuga tempore temporibus, maiores quibusdam quidem, quam nostrum. Cum rerum voluptate iste!
      Laboriosam eaque sit dignissimos. Suscipit cumque odit consequatur repudiandae dignissimos aliquam, minus accusamus molestiae illo dolor culpa tenetur enim eveniet quas repellat aperiam, impedit possimus incidunt animi. Nobis, iste debitis!
      In quidem eius accusamus ratione esse et veniam aut assumenda reiciendis, repudiandae placeat mollitia non architecto libero quibusdam voluptatem corrupti ipsa id sunt quod minima pariatur labore cum optio. Qui.
      Cupiditate voluptatibus quae, sit, explicabo reiciendis dolore maiores eos impedit est harum quidem itaque praesentium, necessitatibus cumque qui ut distinctio aut labore. Beatae sed aspernatur eum distinctio, blanditiis nisi autem.
      Perspiciatis nemo tempore ipsa distinctio! Facere, sint quis inventore iste asperiores magni repudiandae iusto ipsum quas. Soluta, qui vitae? Nihil natus vero voluptas saepe nam necessitatibus totam eos, veniam tenetur.
    </p>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit impedit dolores iusto libero repudiandae sequi totam accusamus nihil fuga tempore temporibus, maiores quibusdam quidem, quam nostrum. Cum rerum voluptate iste!
      Laboriosam eaque sit dignissimos. Suscipit cumque odit consequatur repudiandae dignissimos aliquam, minus accusamus molestiae illo dolor culpa tenetur enim eveniet quas repellat aperiam, impedit possimus incidunt animi. Nobis, iste debitis!
      In quidem eius accusamus ratione esse et veniam aut assumenda reiciendis, repudiandae placeat mollitia non architecto libero quibusdam voluptatem corrupti ipsa id sunt quod minima pariatur labore cum optio. Qui.
      Cupiditate voluptatibus quae, sit, explicabo reiciendis dolore maiores eos impedit est harum quidem itaque praesentium, necessitatibus cumque qui ut distinctio aut labore. Beatae sed aspernatur eum distinctio, blanditiis nisi autem.
      Perspiciatis nemo tempore ipsa distinctio! Facere, sint quis inventore iste asperiores magni repudiandae iusto ipsum quas. Soluta, qui vitae? Nihil natus vero voluptas saepe nam necessitatibus totam eos, veniam tenetur.
    </p>
    <br>
    <br>
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
    <!--<footer class="bg-danger fixed-bottom margin">
      <div class="d-flex">
          <div class="info">
              <p>Games Awesome</p>
            </div>
            <div class="rrss">
                <nav>
                    <ul class="d-flex justify-content-end">
                        <li><p>Siguenos en redes</p></li>
                        <li><a href="https://es-es.facebook.com/" target="_blank"><i class="fab fa-facebook"></i></a></li>
                        <li><a href="https://twitter.com/?lang=es" target="_blank"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a></li>
                    </ul>
                </nav>
            </div>
        </div>    
    </footer>-->
    
    <!-- JavaScritp para bootstrap 5.0.0-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
    </body>
    </html>