
package Modelo;

public class Producto {
    int id;
    int idProveedor;
    String nom;
    double pre;
    int stock;
    String estado;

    public Producto() {
    }

    public Producto(int id,int idProveedor, String nom, double pre, int stock, String estado) {
        this.id = id;
        this.idProveedor=idProveedor;
        this.nom = nom;
        this.pre = pre;
        this.stock = stock;
        this.estado = estado;
    }

    
    
    public int getId() {
        return id;
    }

    public int getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public double getPre() {
        return pre;
    }

    public void setPre(double pre) {
        this.pre = pre;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
}
