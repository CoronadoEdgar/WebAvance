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
public class Proveedor {
    int id;
    String nom;
    String dir;
    String mail;
    String tel;
    String es;
    
    public Proveedor() {
        
    }
    
    public Proveedor(int id, String nom, String dir, String mail, String tel, String es) {
        this.id = id;
        this.nom = nom;
        this.dir = dir;
        this.mail = mail;
        this.tel = tel;
        this.es = es;
    }

   

    public int getId() {
        return id;
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

    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEs() {
        return es;
    }

    public void setEs(String es) {
        this.es = es;
    }
    
    
    
}


