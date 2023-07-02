

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Prueba</title>
        </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                
                <div class="card-header bg-info">
                    <h4>Agregar nueva solicitud</h4>
                </div>
                
                <div class="card-body">
                    <form method="POST">
                        <label>ID Solicitud</label>
                        <input type="text" name="id" class="form-control">     
                        
                        
                        <label >Codigo</label>
                        <!-- comment      <input type="date" name="fecha_ingreso" class="form-control"> -->
                        
                        <input type="text" name="codigo" class="form-control">
                        <label>Descripcion</label>
                        <input type="text" name="descripcion" class="form-control">
                        <label>Resumen</label>
                        <input type="text" name="resumen" class="form-control" path="name">   
                
                        <label>Nombre empleado</label>
                        <input type="text" name="nomEmpleado" class="form-control" path="name">   
                
                        
                        <input type="submit" value="Agregar" class="btn btn-success">
                
                        <a class="btn btn-light" href="index.htm">Regresar</a>
                        
                    </form>
                </div>
            
            </div>
            
            
        </div>
        
        
    </body>
</html>
