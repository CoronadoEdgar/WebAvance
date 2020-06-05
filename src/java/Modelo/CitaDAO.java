/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

public class CitaDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
      public List listar(){
        String sql="select * from cita";
        
        List<Cita>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Cita ci=new Cita();
                ci.setIdCita(rs.getInt(1));
                ci.setIdCliente(rs.getInt(2));
                ci.setFecha(rs.getDate(3));
                ci.setHora(rs.getTime(4));
                ci.setEstado(rs.getString(5));
                lista.add(ci);
            }
        } catch (Exception e) {
        }
        return lista;
    }
      
      public int agregar(Cita ci) {
        String sql="insert into cita( IdCliente, FechaCita,Hora,Estado)values(?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, ci.getIdCliente());
            ps.setDate(2, ci.getFecha()); 
            ps.setTime(3,ci.getHora());
            ps.setString(4,ci.getEstado());
            
            ps.executeUpdate();
         
        } catch (Exception e) {
        }
        return r;
    }
      
     public Cita listarId(int id){
        Cita ci=new Cita();
       String sql="select * from cita where IdCita="+id;
     
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                ci.setIdCita(rs.getInt(1));
                ci.setIdCliente(rs.getInt(2));
                ci.setFecha(rs.getDate(3));
                ci.setHora(rs.getTime(4));
                ci.setEstado(rs.getString(5));
                            
            }
        } catch (Exception e) {
        }
        return ci;
    }
     
     public int actualizar(Cita em){
        String sql="update cita set  IdCliente=?, FechaCita=?,Hora=?,Estado=? where IdCita=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, em.getIdCliente());
            ps.setDate(2, em.getFecha());
            ps.setTime(3,em.getHora());
            ps.setString(4,em.getEstado());
            ps.setInt(5, em.getIdCita());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
     
    public void delete(int id){
        String sql="delete from cita where IdCita="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
