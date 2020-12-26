package mx.redpoint.isa.bean;

import java.util.ArrayList;

public class Agendas {
	private String nombre;
	private String apellido;
	private String vivienda;
	private String correo;
	private ArrayList<Pagos> pagos;
	private ArrayList<Adeudos> adeudos;
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getVivienda() {
		return vivienda;
	}
	public void setVivienda(String vivienda) {
		this.vivienda = vivienda;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public ArrayList<Pagos> getPagos() {
		return pagos;
	}
	public void setPagos(ArrayList<Pagos> pagos) {
		this.pagos = pagos;
	}
	public ArrayList<Adeudos> getAdeudos() {
		return adeudos;
	}
	public void setAdeudos(ArrayList<Adeudos> adeudos) {
		this.adeudos = adeudos;
	}
	
}
