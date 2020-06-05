package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProveedorDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    

//*******Operaciones CRUD***************//
    public List listar(){
        String sql="select * from proveedor";
        List<Proveedor>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Proveedor pro = new Proveedor();
                pro.setId(rs.getInt(1));
                pro.setNom(rs.getString(2));
                pro.setDir(rs.getString(3));
                pro.setMail(rs.getString(4));
                pro.setTel(rs.getString(5));
                pro.setEs(rs.getString(6));               
                lista.add(pro);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Proveedor pro){ 
        String sql="insert into proveedor( Nombres,Direccion,Correo, Telefono,Estado)values(?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, pro.getNom());
            ps.setString(2, pro.getDir());
            ps.setString(3, pro.getMail());
            ps.setString(4, pro.getTel());
            ps.setString(5, pro.getEs());
            
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    public Proveedor listarId(int id){
        Proveedor prov =new Proveedor();
        String sql="select * from proveedor where IdProveedor="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                
                prov.setNom(rs.getString(2));
                prov.setDir(rs.getString(3));
                prov.setMail(rs.getString(4));
                prov.setTel(rs.getString(5));
                prov.setEs(rs.getString(6));              
            }
        } catch (Exception e) {
        }
        return prov;
    }
    public int actualizar(Proveedor em){
        String sql="update proveedor set  Nombres=?,Direccion=?,Correo=?,Telefono=?,Estado=? where IdProveedor=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, em.getNom());
            ps.setString(2, em.getDir());
            ps.setString(3, em.getMail());
            ps.setString(4, em.getTel());
            ps.setString(5, em.getEs());           
            ps.setInt(6, em.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from proveedor where IdProveedor="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
}