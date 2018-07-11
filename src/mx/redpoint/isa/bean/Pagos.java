package mx.redpoint.isa.bean;

import java.util.Date;

public class Pagos {
	private Date fecha;
	private String concepto;
	private double cantidad;
	private String vecino;
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
	public double getCantidad() {
		return cantidad;
	}
	public void setCantidad(double cantidad) {
		this.cantidad = cantidad;
	}
	public String getVecino() {
		return vecino;
	}
	public void setVecino(String vecino) {
		this.vecino = vecino;
	}
	
	
}
