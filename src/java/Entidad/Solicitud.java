/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidad;

import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author APL
 */
public class Solicitud {
    @NotEmpty
    private int id;
    @NotEmpty
    private String codigo;
    @NotEmpty
    private String descripcion;
    @NotEmpty
    private String resumen;
    @NotEmpty
    private int id_empleado;

    public Solicitud() {

    }

    public Solicitud(int id, String codigo, String descripcion, String resumen, int id_empleado) {
        this.id = id;
        this.codigo = codigo;
        this.descripcion = descripcion;
        this.resumen = resumen;
        this.id_empleado = id_empleado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getResumen() {
        return resumen;
    }

    public void setResumen(String resumen) {
        this.resumen = resumen;
    }

    public int getid_empleado() {
        return id_empleado;
    }

    public void setid_empleado(int id_empleado) {
        this.id_empleado = id_empleado;
    }

}
