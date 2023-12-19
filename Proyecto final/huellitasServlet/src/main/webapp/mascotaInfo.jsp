<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
        <title>Mascota Info</title>
    </head>

<body>

<body>
  <header>
    <div id="navbar"></div> 
  </header>
  <main>
    <section id="Ingresar"></section>
    <section id="Registrar"></section>
     <section id="sectionCarrouselFoto">
      <br><br>
      <!-- <div class="container"> -->
        <!-- <div class="row"> -->
          <!-- container foto -->
          <!-- <div class="col-sm-6 mb-3 mb-sm-0 "> -->
            <div class="container-fluid ">
              <div id="carouselExampleCaptions" class="carousel slide carousel-fade carousel-dark ">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
                </div><!--carouselExampleCaptions-->
                <div class="carousel-inner  ">
                  
                      <div class="carousel-item active">
                        <img src="resources/mascotas/ID2309231320_001.jpg" class="d-block w-75 mx-auto " id="imgMasInfo" >
                      </div>
                      <div class="carousel-item">
                        <img src="resources/mascotas/ID2309231320_002.jpg" class="d-block w-75 mx-auto" id="imgMasInfo">
                      </div>
                      <div class="carousel-item">
                        <img src="resources/mascotas/ID2309231320_003.jpg" class="d-block w-75 mx-auto" id="imgMasInfo" >
                      </div>                
                </div><!--carousel-inner-->
    
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
    
              </div> <!--carouselExampleCaptions-->
            </div><!--container w-75 -->
          <!-- </div>col-sm-6 mb-3 mb-sm-0 -->
        <!-- </div>row   -->
    </section>
    <section id="sectionComentario">
      <div class="container">
        <ul class="list-group list-group-flush">
          <li class="list-group-item fs-4 text">
            Hola soy Blue Label. Me perdí­ el dia 23/09/2023 en la plaza de Primero de Mayo en Balvanera. Soy muy
            familiera,
            por favor necesito que me ayuden a volver a casa.
            En la información pueden encontrar los datos de contacto de mi familia.
          </li>
        </ul>
      </div>
    </section>
    <section id="sectionCarrouselDetalle">
      <div class="container">
        <table class="table table-primary table-striped" id="table">
              <thead>
                <tr>
                  <th scope="Nombre">Nombre</th>
                  <td scope="col">Blue Label</td>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">Tipo</th>
                  <td>Gato</td>    
                </tr>
                <tr>
                  <th scope="row">Sexo</th>
                  <td>Hembra</td>    
                </tr>
                <tr>
                  <th scope="row">Color</th>
                  <td>Marrón claro</td>    
                </tr>
                <tr>
                  <th scope="row">Raza</th>
                  <td>Siames</td>    
                </tr>
                <tr>
                  <th scope="row">Fecha de extravio</th>
                  <td>23/09/2023</td>    
                </tr>
                <tr>
                  <th scope="row">Lugar</th>
                  <td>Balvanera</td>    
                </tr>
                <tr>
                  <th scope="row">Mail de contacto</th>
                  <td colspan="2">walr.1821@gmail.com</td>    
                </tr>
                <tr>
                  <th scope="row">Telefono</th>
                  <td colspan="2">1166077041</td>    
                </tr>
                <tr>
                  <th scope="row">ID (Autogenerado) </th>
                  <td colspan="2">2309231320</td>
    
                </tr>
              </tbody>
        </table>
        <table class="table table-info table-striped" id="table">
          <thead>
            <tr>
              <th scope="Nombre">Posee collar</th>
              <td scope="col">Si, color rojo</td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">Lleva prendas</th>
              <td>No</td>    
            </tr>
            <tr>
            
            <tr>
              <th scope="row">Caracteristicas</th>
              <td>No se especifica</td>    
            </tr>
           
          </tbody>
        </table>
        <table class="table table-danger table-striped" id="table">
          <thead>
            <tr>
              <th scope="Nombre">Enfermedades</th>
              <td scope="col">No</td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">Medicamentos</th>
              <td>No</td>    
            </tr>
            <tr>
              <th scope="row">Observaciones</th>
              <td>No se especifica</td>    
            </tr>
                 
          </tbody>
        </table>
   
      </div><!--container--> 
    </section> 
        <section id="sectionMapaContacto">
      <div class="container">
      
      <p class="d-inline-flex gap-1">
        <!-- <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
          Ver mapa
        </a> -->
        <button class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="collapse" data-bs-target="#collapseMapa" aria-expanded="false" aria-controls="collapseExample">
          Mapa
        </button>
        <button class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="collapse" data-bs-target="#collapseContacto" aria-expanded="false" aria-controls="collapseExample">
          Contacto
        </button>
      </p>
      <div class="collapse" id="collapseMapa">
        <div class="card card-body">
                <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2761.261441612043!2d-58.40020696758042!3d-34.61144970582243!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccae89190489d%3A0x2687b239f40855c4!2sPlaza%20Primero%20de%20Mayo!5e0!3m2!1ses-419!2sar!4v1695702064736!5m2!1ses-419!2sar"
                width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade">
              </iframe>
        </div><!--card card-body-->
      </div> <!--collapseMapa-->
      <div class="collapse" id="collapseContacto">
        <div class="card card-body">
              <!-- <form action="https://formspree.io/f/myyqbyge" method="POST"> -->
                <h2 class="text text-uppercase text-center mb-4">Contacto</h2>
                
                <div class="mb-3">
                  <label for="destinatario">Destinatario</label>
                  <input type="email" id="destinatario" class="form-control" name="destinatario" placeholder="walr.1821@gmail.com" required="" aria-label="Disabled input example" disabled readonly>
                </div>

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
                  <button type="submit" onclick="alert_SinInfo()">Enviar</button>
                </div>
              <!-- </form> -->
        </div><!--card card-body-->  
      </div><!--collapseContacto-->
    </section>
    <section>
          <div style="text-align: center;">
            <a href="#top">
              <br><i class="fa-solid fa-arrow-up" style="color: #000000;"></i><br>
            </a>
          </div>
    </section>


  </main>
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
          <br><p>Copyright Â© Walter Ezequiel Reyes 2023</p> 
        </div>
      </div>
    </div>
  </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
   <script>function alert_SinInfo() { alert("En este momento no es posible realizar la transacciÃ³n. Por favor intente nuevamente mÃ¡s tarde."); }</script>
   <script src="resources/js/pages.js" type="text/javascript"></script>
</body>

</html>