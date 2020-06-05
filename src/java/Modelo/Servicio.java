/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author karna
 */
public class Servicio {
    int idSer;
    String nom;
    double pre;
    String estado;
    
    
    public Servicio(int idSer, String nom, double pre, String estado) {
        this.idSer = idSer;
        this.nom = nom;
        this.pre = pre;
        this.estado = estado;
    }

    public Servicio() {

    }

    public int getIdSer() {
        return idSer;
    }

    public void setIdSer(int idSer) {
        this.idSer = idSer;
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

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
    
}
