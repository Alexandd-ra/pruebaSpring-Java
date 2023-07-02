
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Prueba</title>
    </head>
    <body>
    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a class="btn btn-light" href="agregarSolicitud.htm">Nuevo Registro de Solicitud</a>
                    <h1>Lista de solicitudes</h1>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID Solicitud</th>
                                <th>Código</th>
                                <th>Descripción</th>
                                <th>Resumen</th>
                                <th>Id Empleado</th>

                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.id}</td>
                                <td>${dato.codigo}</td>
                                <td>${dato.descripcion}</td>
                                <td>${dato.resumen}</td>
                                <td>${dato.id_empleado}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>    
        </div>
    </body>
</html>
