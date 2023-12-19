<%@page import="dao.MascotasDAO"%>
<%@page import="modelo.Mascota"%>
<%@page import="java.util.List"%>
<!doctype html>
<html lang="en">

    <head>
        <title>Administra Mascotas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css"/>

    <body>
        <main>
            <br><br>
            <div id="tituloSeccion">
                <p><h1>Administrar Mascotas</h1></p>
            </div>
            <div class="container mt-5">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title text-center fw-bold">Agregar Mascota</h2>
                                    <form action="${pageContext.request.contextPath}/vistas/RegistroMascotaServlet" method="post">
                                        <div class="form-group">
                                            <label>Nombre:</label>
                                            <input type="text" class="form-control" name="nombre">
                                        </div>
                                        <div class="form-group">
                                            <label>Raza:</label>
                                            <input type="text" class="form-control" name="raza">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Sexo:</label>
                                            <select class="form-control" name="sexo">
                                                <option value=""></option>
                                                <option value="Macho">Macho</option>
                                                <option value="Hembra">Hembra</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Color:</label>
                                            <input type="text" class="form-control" name="color">
                                        </div>
                                        <br>
                                        <button type="submit" class="btn btn-success">Agregar Mascota</button>
                                        <a href="../index.jsp" class="btn btn-secondary">Volver</a>  
                                
                                        </div>

                                    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container mt-5">

                <table class="table table-info table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Raza</th>
                            <th>Sexo</th>
                            <th>Color</th>
                            <th>Fecha Publicacion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            MascotasDAO mascotasDAO = new MascotasDAO();
                            List<Mascota> mascotas = mascotasDAO.obtenerTodos();

                            if (mascotas != null && !mascotas.isEmpty()) {
                                for (Mascota mascota : mascotas) {
                        %>
                        <tr>
                            <td><%= mascota.getIdMascota()%></td>
                            <td><%= mascota.getNombre()%></td>
                            <td><%= mascota.getRaza()%></td>
                            <td><%= mascota.getSexo()%></td>
                            <td><%= mascota.getColor()%></td>
                            <td><%= mascota.getFechaPublicacion()%></td>
                            <td>
                                <!-- Formulario para editar -->
                                <form action="${pageContext.request.contextPath}/vistas/UpdateMascotaServlet" method="post" style="display: inline-block;">
                                    <!--<form action="UpdateMascotaServlet" method="post" style="display: inline-block;">-->
                                    <input type="hidden" name="accion" value="actualizar">
                                    <input type="hidden" name="indice" value="<%= mascota.getIdMascota()%>">
                                    <button type="submit" class="btn btn-warning btn-sm">Editar</button>
                                </form>

                                <!-- Formulario para eliminar -->
                                <form  action="${pageContext.request.contextPath}/vistas/EliminarServlet" method="post" style="display: inline-block;">
                                    <input type="hidden" name="accion" value="eliminar">
                                    <input type="hidden" name="indice" value="<%= mascota.getIdMascota()%>">
                                    <button type="submit" class="btn btn-danger btn-sm">Eliminar</button>
                                </form>

                            </td>
                        </tr>
                        <%
                            }
                        } else {
                        %>
                        <tr>
                            <td colspan="5">No hay mascotas registrados.</td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>         
        </main>

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</html>