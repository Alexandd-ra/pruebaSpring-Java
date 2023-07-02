/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidad;

import java.util.Date;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author APL
 */
public class Empleado {

    @NotEmpty
    @Size(min = 6, message = "Revisar datos ingresados")
    private int id;
//     private Date fecha_ingreso;
    @NotEmpty
    private String fecha_ingreso;
    @NotEmpty
    private String nombre;
    @NotEmpty
    private int salario;

    public Empleado() {

    }

//    public Empleado(int id, Date fecha_ingreso, String nombre, int salario) {
//        this.id = id;
//        this.fecha_ingreso = fecha_ingreso;
//        this.nombre = nombre;
//        this.salario = salario;
//    }
    public Empleado(int id, String fecha_ingreso, String nombre, int salario) {
        this.id = id;
        this.fecha_ingreso = fecha_ingreso;
        this.nombre = nombre;
        this.salario = salario;
    }

    public String getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(String fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

//    public Date getFecha_ingreso() {
//        return fecha_ingreso;
//    }
//
//    public void setFecha_ingreso(Date fecha_ingreso) {
//        this.fecha_ingreso = fecha_ingreso;
//    }
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getSalario() {
        return salario;
    }

    public void setSalario(int salario) {
        this.salario = salario;
    }

}
