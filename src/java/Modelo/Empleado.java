package Modelo;

public class Empleado {
    int id;
    String dni;
    String nom;
    String mail;
    String dir;
    String tel;
    int estado;
    String user;

    public Empleado() {
    }

    public Empleado(int id, String dni, String mail, String nom, String dir, String tel, int estado, String user) {
        this.id = id;
        this.dni = dni;
        this.nom = nom;
        this.mail=mail;
        this.dir = dir;
        this.tel = tel;
        this.estado = estado;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
     public String getMail() {
        return mail;    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

  
    
}
