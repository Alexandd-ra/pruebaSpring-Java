<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Prueba</title>
    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a class="btn btn-light" href="agregar.htm">Nuevo Registro Empleado</a>
                    <a class="btn btn-light" href="agregarSolicitud.htm">Nuevo Registro de Solicitud</a>

                    <h1>Lista de empleados</h1>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID Empleado</th>
                                <th>Fecha de ingreso</th>
                                <th>Nombres</th>
                                <th>Salario</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.id}</td>
                                    <td>${dato.fecha_ingreso}</td>
                                    <td>${dato.nombre}</td>
                                    <td>${dato.salario}</td>

                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>    
        </div>
    </body>
</html>
