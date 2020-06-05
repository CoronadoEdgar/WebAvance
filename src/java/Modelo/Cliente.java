package Modelo;

public class Cliente {
    int id;
    String nom;
    String mail;
    String tel;
    String es;
    String fecha;

    public Cliente() {
    }

    public Cliente(int id, String nom, String mail, String tel, String es) {
        this.id = id;
        this.nom = nom;
        this.mail = mail;
        this.tel = tel;
        this.es = es;
        this.fecha= fecha;
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
