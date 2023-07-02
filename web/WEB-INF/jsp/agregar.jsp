<%-- 
    Document   : agregar.jsp
    Created on : 1/07/2023, 1:55:30 p. m.
    Author     : APL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Prueba</title>
    </head>
    <body>

        <div class="container mt-4 col-lg-4">
            <div class="card border-info">

                <div class="card-header bg-info">
                    <h4>Agregar nuevo registro</h4>
                </div>

                <div class="card-body">
                    <form method="POST">
                        <label>ID Empleado</label>
                        <input type="text" name="id" class="form-control">     


                        <label >Fecha Ingreso</label>
                        <!-- comment      <input type="date" name="fecha_ingreso" class="form-control"> -->

                        <input type="text" name="fecha_ingreso" class="form-control">
                        <label>Nombres</label>
                        <input type="text" name="nombre" class="form-control">
                        <label>Salario</label>
                        <input type="text" name="salario" class="form-control" path="name">   

                        <input type="submit" value="Agregar" class="btn btn-success">

                        <a class="btn btn-light" href="index.htm">Regresar</a>

                    </form>
                </div>

            </div>


        </div>


    </body>
</html>
