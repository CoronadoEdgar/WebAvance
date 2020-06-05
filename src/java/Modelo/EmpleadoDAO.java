package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmpleadoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    public Empleado buscar(String nom){
      Empleado em=new Empleado();
      String sql="select * from empleado where Nombres="+nom;
      try {
          con=cn.Conexion();
          ps=con.prepareStatement(sql);
          rs=ps.executeQuery();
          while (rs.next()) {
              em.setId(rs.getInt(1));
              em.setNom(rs.getString(2));
             
          }
      } catch (Exception e) {
      }
     return em;
  }

    public int validar(String user, String dni) {
      
        int Estado=0;
        String sql = "select Estado from empleado where User=? and Dni=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, dni);
           

            rs = ps.executeQuery();
            while (rs.next()) {
               Estado=rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return Estado;
    }
    
    //Operaciones CRUD
    
    public List listar(){
        String sql="select * from empleado";
        List<Empleado>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Empleado em=new Empleado();
                em.setId(rs.getInt(1));
                em.setDni(rs.getString(2));
                em.setNom(rs.getString(3));
                em.setMail(rs.getString(4));
                em.setTel(rs.getString(5));
                em.setEstado(rs.getInt(6));
                em.setUser(rs.getString(7));
                lista.add(em);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Empleado em){ 
        String sql="insert into empleado(Dni, Nombres,CorreoEmpleado, TelefonoEmpleado,Estado,User)values(?,?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, em.getDni());
            ps.setString(2, em.getNom());
            ps.setString(3, em.getMail());
            ps.setString(4, em.getTel());
            ps.setInt(5, em.getEstado());
            ps.setString(6, em.getUser());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    public Empleado listarId(int id){
        Empleado emp=new Empleado();
        String sql="select * from empleado where IdEmpleado="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                emp.setId(rs.getInt(1));
                emp.setDni(rs.getString(2));
                emp.setNom(rs.getString(3));
                emp.setMail(rs.getString(4));
                emp.setTel(rs.getString(5));
                emp.setEstado(rs.getInt(6));
                emp.setUser(rs.getString(7));
            }
        } catch (Exception e) {
        }
        return emp;
    }
    public int actualizar(Empleado em){
        String sql="update empleado set Dni=?, Nombres=?,CorreoEmpleado=?, TelefonoEmpleado=?,Estado=?,User=? where IdEmpleado=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, em.getDni());
            ps.setString(2, em.getNom());
            ps.setString(3, em.getMail());
            ps.setString(4, em.getTel());
            ps.setInt(5, em.getEstado());
            ps.setString(6, em.getUser());
            ps.setInt(7, em.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from empleado where IdEmpleado="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
}
