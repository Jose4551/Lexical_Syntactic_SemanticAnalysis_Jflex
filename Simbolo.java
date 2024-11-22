/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package demo_cup;

import java.util.Objects;

/**
 *
 * @author Alumno
 */
public class Simbolo {
    private String nombre;
    private String tipo;
    private Object valor;
    private String ambito;
    private boolean constate;

    public Simbolo(String nombre, String tipo, Object valor, String ambito, boolean constate) {
        this.nombre = nombre;
        this.tipo = tipo;
        this.valor = valor;
        this.ambito = ambito;
        this.constate = constate;
    }

    public String getNombre() {
        return nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public Object getValor() {
        return valor;
    }

    public String getAmbito() {
        return ambito;
    }

    public boolean isConstate() {
        return constate;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setValor(Object valor) {
        this.valor = valor;
    }

    public void setAmbito(String ambito) {
        this.ambito = ambito;
    }

    public void setConstate(boolean constate) {
        this.constate = constate;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 97 * hash + Objects.hashCode(this.nombre);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Simbolo other = (Simbolo) obj;
        return Objects.equals(this.nombre, other.nombre);
    }

    @Override
    public String toString() {
        return "Simbolo{" + "nombre=" + nombre + ", tipo=" + tipo + ", valor=" + valor + ", ambito=" + ambito + ", constate=" + constate + '}'+ '\n';
    }
    
    
}