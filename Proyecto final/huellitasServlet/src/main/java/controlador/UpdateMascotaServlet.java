package controlador;

import dao.MascotasDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import modelo.Mascota;

@WebServlet("/vistas/UpdateMascotaServlet")
public class UpdateMascotaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        MascotasDAO mascotaNuevo = new MascotasDAO();
        String idMascotaStr = request.getParameter("indice");

        // Verifica si el ID de la mascota no es nulo ni vacío
        if (idMascotaStr != null && !idMascotaStr.isEmpty()) {
            try {
                // Convierte el ID de la mascota a un tipo adecuado
                int idMascota = Integer.parseInt(idMascotaStr);

                String accion = request.getParameter("accion");

                switch (accion) {
                    case "actualizar":
                        // Obtiene la mascota a actualizar
                        Mascota mascotaActualizar = mascotaNuevo.obtenerPorId(idMascota);

                        // Almacena la mascota en el request para enviarla a la página JSP
                        request.setAttribute("mascota", mascotaActualizar);

                        // Redirige al formulario de actualización
                        request.getRequestDispatcher("/vistas/actualizar.jsp").forward(request, response);
                        break;
                    case "confirmarActualizacion":
                        // Crea una instancia del objeto Mascota y establece los nuevos valores
                        Mascota mascotaActualizado = new Mascota();
                        mascotaActualizado.setIdMascota(idMascota);
                        mascotaActualizado.setNombre(request.getParameter("nombre"));
                        mascotaActualizado.setRaza(request.getParameter("raza"));
                        mascotaActualizado.setSexo(request.getParameter("sexo"));
                        mascotaActualizado.setColor(request.getParameter("color"));

                        // Actualiza la mascota en la base de datos
                        mascotaNuevo.actualizarMascota(mascotaActualizado);

                        // Redirige después de la actualización
                        response.sendRedirect(request.getContextPath() + "/vistas/actualizar.jsp");
                        break;
                }
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

