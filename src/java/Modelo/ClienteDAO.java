
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    
  public Cliente buscar(String nom){
      Cliente c=new Cliente();
      String sql="select * from producto where Nombres="+nom;
      try {
          con=cn.Conexion();
          ps=con.prepareStatement(sql);
          rs=ps.executeQuery();
          while (rs.next()) {
              c.setId(rs.getInt(1));
              c.setNom(rs.getString(2));
             
          }
      } catch (Exception e) {
      }
     return c;
  }
//*******Operaciones CRUD***************//
    public List listar(){
        String sql="select * from cliente";
        
        List<Cliente>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Cliente cl=new Cliente();
                cl.setId(rs.getInt(1));
                cl.setNom(rs.getString(2));
                cl.setTel(rs.getString(3));
                cl.setMail(rs.getString(4));
                cl.setEs(rs.getString(5));               
                lista.add(cl);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Cliente cl){ 
        String sql="insert into cliente( Nombres, Telefono, Correo,Estado)values(?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, cl.getNom());
            ps.setString(2, cl.getTel());
            ps.setString(3, cl.getMail());
            ps.setString(4, cl.getEs());           
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    public Cliente listarId(int id){
        Cliente cli=new Cliente();
       String sql="select * from cliente where IdCliente="+id;
     
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                cli.setNom(rs.getString(2));
                cli.setTel(rs.getString(3));
                cli.setMail(rs.getString(4));
                cli.setEs(rs.getString(5));              
            }
        } catch (Exception e) {
        }
        return cli;
    }
    public int actualizar(Cliente em){
        String sql="update cliente set  Nombres=?, Telefono=?,Correo=?,Estado=? where IdCliente=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, em.getNom());
            ps.setString(2, em.getTel());
            ps.setString(3, em.getMail());
            ps.setString(4, em.getEs());           
            ps.setInt(5, em.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from cliente where IdCliente="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

   
    
}
