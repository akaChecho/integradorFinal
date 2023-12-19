package controlador;

import dao.MascotasDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.Instant;
import modelo.Mascota;

@WebServlet("/vistas/RegistroMascotaServlet")
public class RegistroMascotaServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                int idMascota = 0;
                MascotasDAO mascotaDAO = new MascotasDAO();
                Mascota mascotaNuevo = new Mascota();

                // Obtener el timestamp actual y usarlo como ID de mascota
                Instant instant = Instant.now();
                Timestamp timestamp = Timestamp.from(instant);
                idMascota = (int) (timestamp.getTime() / 1000);
                mascotaNuevo.setIdMascota(idMascota);
                // Configurar los demás atributos de la mascota
                mascotaNuevo.setNombre(request.getParameter("nombre"));
                mascotaNuevo.setRaza(request.getParameter("raza"));
                mascotaNuevo.setSexo(request.getParameter("sexo"));
                mascotaNuevo.setColor(request.getParameter("color"));
                java.util.Date fechaActual = new java.util.Date();
                mascotaNuevo.setFechaPublicacion(new Date(fechaActual.getTime()));

                // Agregar la mascota a la base de datos
                mascotaDAO.agregarMascota(mascotaNuevo);

                // Redireccionar a la página de visualización de mascotas
                response.sendRedirect(request.getContextPath() + "/vistas/gestorMascotas.jsp");
                
    }
}


