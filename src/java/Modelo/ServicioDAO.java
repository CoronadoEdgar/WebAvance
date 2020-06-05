package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ServicioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
  public Servicio buscar(int id){
      Servicio s=new Servicio();
      String sql="select * from producto where IdServicio="+id;
      try {
          con=cn.Conexion();
          ps=con.prepareStatement(sql);
          rs=ps.executeQuery();
          while (rs.next()) {
              s.setIdSer(rs.getInt(1));
              s.setNom(rs.getString(2));
              s.setPre(rs.getDouble(3));
              s.setEstado(rs.getString(4));
          }
      } catch (Exception e) {
      }
     return s;
  }
 
    
  //*******Operaciones CRUD***************//    
    public List listar(){
        String sql="select * from servicio";
        List<Servicio>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Servicio s=new Servicio();
                s.setIdSer(rs.getInt(1));
                s.setNom(rs.getString(2));               
                s.setPre(rs.getDouble(3));
                s.setEstado(rs.getString(4));                
                lista.add(s);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Servicio s){ 
        String sql="insert into producto(Nombres, Precio,Estado)values(?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, s.getNom());
            ps.setDouble(2, s.getPre());
            ps.setString(4, s.getEstado());        
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    public Servicio listarId(int id){
        Servicio s=new Servicio();
        String sql="select * from servicio where IdServicio="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                s.setIdSer(rs.getInt(1));
                s.setNom(rs.getString(2));               
                s.setPre(rs.getDouble(3));
                s.setEstado(rs.getString(4));  
            }
        } catch (Exception e) {
        }
        return s;
    }
    public int actualizar(Servicio s){
        String sql="update servicio set Nombres=?, Precio=?, Estado=? where IdServicio=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, s.getNom());
            ps.setDouble(2, s.getPre());
            ps.setString(3, s.getEstado());            
            ps.setInt(4, s.getIdSer());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from servicio where IdServicio="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
}