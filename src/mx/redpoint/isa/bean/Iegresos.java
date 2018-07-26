package mx.redpoint.isa.bean;

import java.util.ArrayList;
import java.util.Date;

public class Iegresos {
	private Date fecha;
	private String concepto;
	private String cantidad;
	private String comprobante;
	private String remitente;
	private String cuenta;
//	private ArrayList<Iegresos> ingresos;  ADMINISTRADOR
//	private ArrayList<Iegresos> egresos; ADMINISTRADOR
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public String getConcepto() {
		return concepto;
	}
	public void setConcepto(String concepto) {
		this.concepto = concepto;
	}
	public String getCantidad() {
		return cantidad;
	}
	public void setCantidad(String cantidad) {
		this.cantidad = cantidad;
	}
	public String getComprobante() {
		return comprobante;
	}
	public void setComprobante(String comprobante) {
		this.comprobante = comprobante;
	}
	public String getRemitente() {
		return remitente;
	}
	public void setRemitente(String remitente) {
		this.remitente = remitente;
	}
	public String getCuenta() {
		return cuenta;
	}
	public void setCuenta(String cuenta) {
		this.cuenta = cuenta;
	}
	
}
