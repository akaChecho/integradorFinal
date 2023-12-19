<%-- 
    Document   : index
    Created on : 13 dic. 2023, 11:20:19
    Author     : casa
--%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
        <title>Encuentra Huellitas</title>
    </head>

<body>
  <header>
    <div id="navbar"></div> 
 </header>
 <in
  <main>
    <section id="Ingresar"></section>
    <section id="Registrar"></section>
    <section id="sectionBanner">
      <div class="banner">
        <div class="container-sm ">
          <img src="resources/img/logo_00003.png" class="img-fluid" alt="Banner" id="logo"><img src="resources/img/logo_00002.png" class="img-fluid" alt="Banner">
        </div>
    </section>
</section>
    </section>  
    <section id="sectionBuscaEncuentraAbraza">
      <div id="tituloSeccion">
        <p><h1>Busca, Encuentra, Abraza de Nuevo</h1></p>
      </div>   
      <div class="container-sm w-100">
        <img src="resources/img/steps_00001.png" class="img-fluid" alt="Banner" style="border-radius: 0.5rem;"; >
      </div>
    </section>
    <section id="sectionbuscarmascota">
      <div id="tituloSeccion">
          <p><h1>Buscar Mascota</h1></p>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="card">
              <img src="resources/mascotas/ID2309231320_001.jpg" class="card-img-top">
              <div class="card-body">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item text-center fw-bold">Blue label</li>
                  <li class="list-group-item" >Fecha de Extravio: <strong id="fechaExtravio001">2/11/2023</strong></li> 
                  <li class="list-group-item">Zona: <strong>Balvanera</strong></li>
                </ul>
                <div class="card text-center">
                  <a href="mascotaInfo.jsp" class="btn btn-success" >Más información</a>
                  <div class="card-footer text-body-secondary" id="cantidadDias001"></div>
                </div>   
              </div><!--card-body-->
            </div><!--card-->
          </div><!--col-sm-4-->
          <div class="col-sm-4">
            <div class="card">
              <img src="resources/mascotas/ID1209231403.jpg" class="card-img-top" alt="Imagen mascota">
              <div class="card-body">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item text-center fw-bold">Jack Daniels</li>
                  <li class="list-group-item">Fecha de Extravio: <strong id="fechaExtravio002">12/09/2023</strong></li>
                  <li class="list-group-item">Zona: <strong>Boedo</strong></li>
                </ul>
                <div class="card text-center">
                  <a href="#" class="btn btn btn-secondary" onclick="alert_SinInfo()">Más información</a>
                  <div class="card-footer text-body-secondary" id="cantidadDias002"></div>
                </div><!--card text-center-->
              </div><!--card-body-->
            </div><!--card-->
          </div><!--col-sm-4-->
          <div class="col-sm-4">
            <div class="card">
              <img src="resources/mascotas/ID0507232250.jpg" class="card-img-top" alt="Imagen mascota">
              <div class="card-body">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item text-center fw-bold">Havana Club</li>
                  <li class="list-group-item">Fecha de Extravio: <strong id="fechaExtravio003">05/07/2023</strong></li>
                  <li class="list-group-item">Zona: <strong>Congreso</strong></li>
                </ul>
                <div class="card text-center">
                  <a href="#" class="btn btn btn-secondary" onclick="alert_SinInfo()">Más información</a>
                  <div class="card-footer text-body-secondary" id="cantidadDias003"></div>
                </div><!--car tex-center-->
              </div><!--card-body-->
            </div><!--card-->
          </div><!--col-sm-4-->
          <div class="col-sm-4">
            <div class="card">
              <img src="resources/mascotas/ID2309231320_001.jpg" class="card-img-top">
              <div class="card-body">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item text-center fw-bold">Blue label</li>
                  <li class="list-group-item">Fecha de Extravio: <strong id="fechaExtravio004">23/09/2023</strong></li>
                  <li class="list-group-item">Zona: <strong>Balvanera</strong></li>
                </ul>
                <div class="card text-center">
                  <a href="mascotaInfo.jsp" class="btn btn-success">Más información</a>
                  <div class="card-footer text-body-secondary" id="cantidadDias004"></div>
                </div>
              </div><!--card-body-->
            </div><!--card-->
          </div><!--col-sm-4-->
          <div class="col-sm-4">
            <div class="card">
              <img src="resources/mascotas/ID1209231403.jpg" class="card-img-top" alt="Imagen mascota">
              <div class="card-body">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item text-center fw-bold">Jack Daniels</li>
                  <li class="list-group-item">Fecha de Extravio: <strong id="fechaExtravio005">12/09/2023</strong></li>
                  <li class="list-group-item">Zona: <strong>Boedo</strong></li>
                </ul>
                <div class="card text-center">
                  <a href="#" class="btn btn btn-secondary" onclick="alert_SinInfo()">Más información</a>
                  <div class="card-footer text-body-secondary" id="cantidadDias005"></div>
                </div><!--card text-center-->
              </div><!--card-body-->
            </div><!--card-->
          </div><!--col-sm-4-->
          <div class="col-sm-4">
            <div class="card">
              <img src="resources/mascotas/ID0507232250.jpg" class="card-img-top" alt="Imagen mascota">
              <div class="card-body">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item text-center fw-bold">Havana Club</li>
                  <li class="list-group-item">Fecha de Extravio: <strong id="fechaExtravio006">05/07/2023</strong></li>
                  <li class="list-group-item">Zona: <strong>Congreso</strong></li>
                </ul>
                <div class="card text-center">
                  <a href="#" class="btn btn btn-secondary" onclick="alert_SinInfo()">Más información</a>
                  <div class="card-footer text-body-secondary" id="cantidadDias006"></div>
                </div><!--car tex-center-->
              </div><!--card-body-->
            </div><!--card-->
          </div><!--col-sm-4-->
        </div><!--row-->
      </div><!--container-->
    </section>
  </main>
  <section id="sectionNosotros">
    <div id="tituloSeccion">
    <p><h1>Sobre Nosotros</h1></p>
    </div>
    <div class="container-xl w-75">
      <div id="carouselExampleCaptions" class="carousel slide carousel-fade carousel-dark ">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
            aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
            aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
            aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active ">
            <img src="resources/img/carrousel-00005.jpg" class="d-block w-100" alt="..." id="carrouselImg">
            <div class="carousel-caption">
              <div class="card-title" id="carrouselTitulo">Comunidad</div>
              <div class="card-body d-none d-sm-block" id="carrouselCuerpo">Somos una comunidad comprometida a reunir
                mascotas perdidas con sus seres queridos.</div>
            </div>
          </div>
          <div class="carousel-item">
            <img src="resources/img/carrousel-00006.jpg" class="d-block w-100 " alt="..." id="carrouselImg">
            <div class="carousel-caption">

              <div class="card-title" id="carrouselTitulo">Amor</div>
              <div class="card-body d-none d-sm-block" id="carrouselCuerpo">Amantes de los animales que perdieron sus
                mascotas nos inspiraron a crear una solución solidaria que alivie el sufrimiento y promueva la
                solidaridad.</div>
            </div>
          </div>
          <div class="carousel-item">
            <img src="resources/img/carrousel-00002.jpg" class="d-block w-100" alt="..." id="carrouselImg">
            <div class="carousel-caption">
              <div class="card-title" id="carrouselTitulo">Solidaridad</div>
              <div class="card-body d-none d-sm-block" id="carrouselCuerpo">Amantes de los animales que perdieron sus
                mascotas nos inspiraron a crear una solución solidaria.</div>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
          data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
          data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>

      </div>
      <span>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">
            Somos una comunidad dedicada a reunir mascotas perdidas con sus seres queridos, ofreciendo apoyo y esperanza
            en momentos difíciles.
            Nuestra historia nació del amor por los animales y la solidaridad entre aquellos que han perdido a sus
            amigos peludos. Buscamos aliviar el sufrimiento y promover la solidaridad.
            En "Encuentra Huellitas," te proporcionamos una plataforma para buscar y encontrar a tus mascotas perdidas,
            donde la compasión y la acción se unen para reunir a las familias con sus adorados compañeros peludos. Tu
            búsqueda y tu historia de reencuentro comienzan aquí.

          </li>

        </ul>
      </span>
    </div>
    <!-- nostros  -->
  </section>
  <section id="sectionContacto">
    <div id="tituloSeccion">
      <p><h1>Contacto</h1></p>
    </div>
    <div class="container">
      <div class="card card-body">
        <form action="https://formspree.io/f/myyqbyge" method="POST"> 
              
          <div class="mb-3">
            <label for="correo">Correo electrónico:</label>
            <input type="email" id="correo" class="form-control" name="correo" placeholder="Ingrese su correo electrónico" required="">
          </div>
       
          <div class="mb-3">
            <label for="mensaje" class="form-label">Mensaje:</label><br>
            <textarea class="form-control" id="mensaje" name="mensaje" rows="10"  placeholder="Dejanos tu mensaje"></textarea>
          </div> 
        
          <div class="mb-3">
            <label for="terminos" class="form-check-label">
              <input id="terminos" name="terminos" type="checkbox" value="aceptado" required="">
              Acepto términos y condiciones
            </label>
          </div>
          <div class="text-center">
            <button type="submit">Enviar</button>
          </div>
        <!-- </form> -->
  </div><!--card card-body-->  
      
    </div><!--container-->
  </section>
  <section>
    <div style="text-align: center;">
      <a href="#top">
        <br><i class="fa-solid fa-arrow-up" style="color: #000000;"></i><br>
      </a>
    </div>
</section>
  <footer>
    <div class="secciones" id="sobreNosotros">
      <div class="text text-center bg-dark bg-gradient ">
        <div class="row justify-content-around text-light ">
          <div class="col-4">
            <br><h6>Calle Falsa 123,</h6>
            <h6>Buenos Aires</h6>
            <h6>Argentina</h6>
           
          </div>
          <div class="col-4">
            <br><div class="col-12">
            <a target="_blank" href="https://www.instagram.com/"><i class="fa-brands fa-instagram fa-2x"  style="color: #ffffff;" ></i></a>
            <a target="_blank" href="https://www.facebook.com/"><i class="fa-brands fa-facebook fa-2x" style="color: #ffffff;"></i></a>
            </div>
          </div>
          <br><p>Copyright © Walter Ezequiel Reyes 2023</p> 
        </div>
      </div>
    </div>
  </footer>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
 <script>function alert_SinInfo() { alert("En este momento no es posible realizar la transacción. Por favor intente nuevamente más tarde."); }</script>
 <script>function alert_Login() { alert("Logín sólo disponible en modo Administrador."); }</script>
 <script src="resources/js/pages.js" type="text/javascript"></script>
 <script src="resources/js/fechas.js" type="text/javascript"></script>
 <script src="resources/js/efectoLogo.js" type="text/javascript"></script>
 <script src="resources/js/efectoCards.js" type="text/javascript"></script>
</body>
</html>

