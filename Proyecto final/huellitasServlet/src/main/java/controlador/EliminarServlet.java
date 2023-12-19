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

@WebServlet("/vistas/EliminarServlet")
public class EliminarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                MascotasDAO mascotaDAO = new MascotasDAO();

            // Obtén el ID de la mascota desde los parámetros de la solicitud
            String idMascotaStr = request.getParameter("indice");

            // Verifica si el ID de la mascota no es nulo ni vacío
            if (idMascotaStr != null && !idMascotaStr.isEmpty()) {
                try {
                    // Convierte el ID de la mascota a un tipo adecuado (puede ser necesario ajustar esto dependiendo del tipo de ID que estés utilizando)
                    int idMascota = Integer.parseInt(idMascotaStr);

                    // Crea una instancia del DAO y elimina la mascota usando el ID
                    mascotaDAO.eliminarMascota(idMascota);

                    // Redirige a la página de gestión de mascotas después de eliminar
                    response.sendRedirect(request.getContextPath() + "/vistas/gestorMascotas.jsp");
                } catch (NumberFormatException e) {
                    // Manejar la excepción si no se puede convertir el ID a un número
                    e.printStackTrace(); // O utiliza un logger para gestionar las excepciones
                    response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID de mascota no válido");
                }
            } else {
                // Manejar el caso en el que el ID de la mascota no está presente en la solicitud
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID de mascota no proporcionado");
            }

                
    }
}


