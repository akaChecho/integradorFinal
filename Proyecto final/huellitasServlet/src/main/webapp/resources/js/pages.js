/* global bootstrap */

// sessionStorage.clear();
// localStorage.clear();
function obtenerSesiones (){
  console.log("Validacion inicial - localStorage con status:  " +  localStorage.getItem("userSession"));
  console.log("Validacion inicial - sessionStorage con status:  " +  sessionStorage.getItem("userSession"));
}
function validaSesionesAntiguas(){
  if (localStorage.getItem("userSession") === "logIn" && sessionStorage.getItem("userSession") === null) {
    console.log("Status sesion - Primer ingreso");
    localStorage.clear();
    console.log("Se procede a limpiar localStorage...");

  }  
}

async function ObtenerNavbar(){  
    
  if (localStorage.getItem("userSession") === null || localStorage.getItem("userSession") === undefined) {
    // async function obtenerNavbar() {
      const response = await fetch("resources/pages/navbar.html");
      const html = await response.text();
      document.querySelector("#navbar").innerHTML = html;
 
      const navbarPublicarMascotas = document.getElementById('navPublicarMascotas');
      navbarPublicarMascotas.classList.add('d-none');

      const navbarSalir = document.getElementById('menuSalir');
      navbarSalir.classList.add('d-none');
      
     
      console.log('respuesta',html);
      
      

    }

    if (localStorage.getItem("userSession") === "logIn" && sessionStorage.getItem("userSession") === "logIn") {
      // async function obtenerNavbar() {
        const response = await fetch("resources/pages/navbar.html");
        const html = await response.text();
        document.querySelector("#navbar").innerHTML = html;
        
        const navbarPublicarMascotas = document.getElementById('navPublicarMascotas');
        navbarPublicarMascotas.classList.remove('d-none');
        
        const navbarIngresar = document.getElementById('menuIngresar');
        navbarIngresar.classList.add('d-none');

        const navbarRegistrarse = document.getElementById('menuRegistrarse');
        navbarRegistrarse.classList.add('d-none');

        // const navbarSalir = document.getElementById('menuSalir');
        // navbarSalir.classList.add('show');

        

      
      }

      if (localStorage.getItem("userSession") === "logIn" && sessionStorage.getItem("userSession") === "logOut") {
        // async function obtenerNavbar() {
          const response = await fetch("resources/pages/navbar.html");
          const html = await response.text();
          document.querySelector("#navbar").innerHTML = html;
          
          const navbarPublicarMascotas = document.getElementById('navPublicarMascotas');
          navbarPublicarMascotas.classList.add('d-none');
          
          const navbarSalir = document.getElementById('menuSalir');
          navbarSalir.classList.add('d-none');
  
          const navbarIngresar = document.getElementById('menuIngresar');
          navbarIngresar.classList.remove('d-none');
  
        }
    // obtenerNavbar();
}  

async function obtenerIngresarPage() {
  // if (localStorage.getItem("userSession") === null || localStorage.getItem("userSession") === undefined) {
      const response = await fetch("resources/pages/ingresar.html");
      const html = await response.text();
      document.querySelector("#Ingresar").innerHTML = html;
      console.log("se carga el bloque ingresar");
    // }
    // obtenerIngresarPage();            
    // localStorage.setItem("userSession", "logIn");            
    // console.log("se carga userSession")
  }
  
  async function obtenerRegistrarPage() {
    // if (localStorage.getItem("userSession") === null || localStorage.getItem("userSession") === undefined) {
        const response = await fetch("resources/pages/registrar.html");
        const html = await response.text();
        document.querySelector("#Registrar").innerHTML = html;
        console.log("se carga el bloque registrar");
      // }
      // obtenerIngresarPage();            
      // localStorage.setItem("userSession", "logIn");            
      // console.log("se carga userSession")
    }

//carga inicial
try {
  obtenerSesiones ();
  validaSesionesAntiguas();
  ObtenerNavbar();
  obtenerIngresarPage();
  obtenerRegistrarPage();
  localStorage.setItem("userSession", "logIn");  
  console.log("Main try se ejecutó correctamente");

} catch (error) {
  console.error("Error: Try NO se ejecutó correctamente", error);
}

function cerrarModuloLogin(){
  const offcanvas = bootstrap.Offcanvas.getInstance(document.getElementById('staticBackdropIngresar'));
  offcanvas.hide();  
  
}
async function Ingresar() {
  try { 
    cerrarModuloLogin ();
    sessionStorage.setItem("userSession", "logIn");     
    console.log("sessionStorage :  " +  sessionStorage.getItem("userSession"));
    console.log("Ok - Login correcto");

  } catch (error) {
    console.error("NOT OK - Login incorrecto", error);
  }
  try {
    ObtenerNavbar ();
    console.log("Validacion inicial - localStorage con status:  " +  localStorage.getItem("userSession"));
    console.log("Validacion inicial - sessionStorage con status:  " +  sessionStorage.getItem("userSession"));
    console.log("OK - Recargar navbar");
    
  } catch (error) {
    console.error("NOT OK - Recargar navbar", error);
  }

}  
