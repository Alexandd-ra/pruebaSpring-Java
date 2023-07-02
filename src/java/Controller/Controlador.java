/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Config.Conexion;
import Entidad.Empleado;
import Entidad.Solicitud;
import java.util.List;
import javax.validation.Valid;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author APL
 */
@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();

    @RequestMapping("index.htm")
    public ModelAndView Listar() {
        String sql = "select * from empleado";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar() {
        mav.addObject(new Empleado());
        mav.setViewName("agregar");
        return mav;
    }

    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(@Valid Empleado e, BindingResult resultadoValidacion) {

        //if(resultadoValidacion.hasErrors()){
//        java.sql.Date date2 = new java.sql.Date(e.getFecha_ingreso().getTime());
        //    System.out.println("tiene error");
        //   }else{
        String sql = "insert into empleado(id, fecha_ingreso, nombre, salario) values(?,?,?,?)";
        this.jdbcTemplate.update(sql, e.getId(), e.getFecha_ingreso(), e.getNombre(), e.getSalario());
        return new ModelAndView("redirect:/index.htm");

    }

    @RequestMapping("listarSolicitud.htm")
    public ModelAndView ListarSolicitud() {
        String sql = "select * from solicitud";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("listarSolicitud");
        return mav;

    }
    
    @RequestMapping(value = "agregarSolicitud.htm", method = RequestMethod.GET)
    public ModelAndView AgregarSolicitud() {
        mav.addObject(new Solicitud());
        mav.setViewName("agregarSolicitud");
        return mav;
    }

    
    @RequestMapping(value = "agregarSolicitud.htm", method = RequestMethod.POST)
    public ModelAndView AgregarSolicitud(@Valid Solicitud s, BindingResult resultadoValidacion) {

        String sql = "insert into solicitud(id, codigo, descripcion, resumen, id_empleado) values(?,?,?,?,?)";
        this.jdbcTemplate.update(sql, s.getId(), s.getCodigo(), s.getDescripcion(), s.getResumen(), s.getid_empleado());
        return new ModelAndView("redirect:/listarSolicitud.htm");

    }

}
