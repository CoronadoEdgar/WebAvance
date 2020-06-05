
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
  public Producto buscar(int id){
      Producto p=new Producto();
      String sql="select * from producto where idproducto="+id;
      try {
          con=cn.Conexion();
          ps=con.prepareStatement(sql);
          rs=ps.executeQuery();
          while (rs.next()) {
              p.setId(rs.getInt(1));
              p.setIdProveedor(rs.getInt(2));
              p.setNom(rs.getString(3));
              p.setPre(rs.getDouble(4));
              p.setStock(rs.getInt(5));
              p.setEstado(rs.getString(6));
          }
      } catch (Exception e) {
      }
     return p;
  }
  public int actualizarstock(int id, int stock){
      String sql="update producto set Stock=? where idproducto=?";
      try {
          con=cn.Conexion();
          ps=con.prepareStatement(sql);
          ps.setInt(1, stock);
          ps.setInt(2, id);
          ps.executeUpdate();
      } catch (Exception e) {
      }
      return r;
  }
    
  //*******Operaciones CRUD***************//    
    public List listar(){
        String sql="select * from producto";
        List<Producto>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Producto em=new Producto();
                em.setId(rs.getInt(1));
                em.setIdProveedor(rs.getInt(2));
                em.setNom(rs.getString(3));               
                em.setPre(rs.getDouble(4));
                em.setStock(rs.getInt(5));
                em.setEstado(rs.getString(6));                
                lista.add(em);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Producto p){ 
        String sql="insert into producto(Nombres,IdProveedor, Precio,Stock,Estado)values(?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, p.getNom());
            ps.setInt(2,p.getIdProveedor());
            ps.setDouble(3, p.getPre());
            ps.setInt(4, p.getStock());
            ps.setString(5, p.getEstado());        
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    public Producto listarId(int id){
        Producto pr=new Producto();
        String sql="select * from producto where IdProducto="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                pr.setId(rs.getInt(1));
                pr.setIdProveedor(rs.getInt(2));
                pr.setNom(rs.getString(3));               
                pr.setPre(rs.getDouble(4));
                pr.setStock(rs.getInt(5));
                pr.setEstado(rs.getString(6));  
            }
        } catch (Exception e) {
        }
        return pr;
    }
    public int actualizar(Producto em){
        String sql="update producto set Nombres=?,IdProveedor=?, Precio=?, Stock=?, Estado=? where IdProducto=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, em.getNom());
            ps.setInt(2, em.getIdProveedor());
            ps.setDouble(3, em.getPre());
            ps.setInt(4, em.getStock());
            ps.setString(5, em.getEstado());            
            ps.setInt(6, em.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from producto where IdProducto="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
}
