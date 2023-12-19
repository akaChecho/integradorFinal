<%@page import="modelo.Mascota"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
    <head>
        <title>Login Administrador</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="../resources/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <br><br>
        <div id="tituloSeccion">
            <p><h1>Actualizar Mascota</h1></p>
    </div
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <form action="${pageContext.request.contextPath}/vistas/UpdateMascotaServlet" method="post">
                            <input type="hidden" name="accion" value="confirmarActualizacion">
                            <input type="hidden" name="indice" value="${mascota.idMascota}">

                            <div class="form-group">
                                <label for="nombre">Nombre:</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" value="${mascota.nombre}" required>
                            </div>

                            <div class="form-group">
                                <label for="raza">Raza:</label>
                                <input type="text" class="form-control" id="raza" name="raza" value="${mascota.raza}" required>
                            </div>

                            <div class="form-group">
                                <label for="sexo">Sexo:</label>
                                <input type="text" class="form-control" id="sexo" name="sexo" value="${mascota.sexo}" required>
                            </div>

                            <div class="form-group">
                                <label for="color">Color:</label>
                                <input type="text" class="form-control" id="color" name="color" value="${mascota.color}" required>
                            </div>

                            <button type="submit" class="btn btn-success">Actualizar</button>
                            <a href="${pageContext.request.contextPath}/vistas/gestorMascotas.jsp" class="btn btn-secondary">Volver</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Incluir Bootstrap Javascript y sus dependencias -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>