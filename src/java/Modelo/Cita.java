/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package Modelo;
import java.sql.Date;
import java.sql.Time;
/**
 *
 * @author karna
 */
public class Cita {
    int idCita;
    int idCliente;
    Date fecha;
    Time hora;
    String estado;

    public Cita(int idCliente, Date fecha,Time hora,String estado) {
        this.idCita= idCita;
        this.idCliente = idCliente;
        this.fecha = fecha;
        this.hora = hora;
        this.estado = estado;
    }

   

    public Cita() {
        
    }

    public Time getHora() {
        return hora;
    }

    public void setHora(Time hora) {
        this.hora = hora;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getIdCita() {
        return idCita;
    }

    public void setIdCita(int idCita) {
        this.idCita = idCita;
    }
    

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
    
}
