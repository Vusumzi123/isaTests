package mx.redpoint.isa.bean;

import java.util.ArrayList;

public class Vecinos {
	private String namev;
	private String lastnamev;
	private String numberv;
	private String emailv;
	private ArrayList<Pagos> pagos;
	private ArrayList<Adeudos> adeudos;
	
	public String getNamev() {
		return namev;
	}
	public void setNamev(String namev) {
		this.namev = namev;
	}
	public String getLastnamev() {
		return lastnamev;
	}
	public void setLastnamev(String lastnamev) {
		this.lastnamev = lastnamev;
	}
	public String getNumberv() {
		return numberv;
	}
	public void setNumberv(String numberv) {
		this.numberv = numberv;
	}
	public String getEmailv() {
		return emailv;
	}
	public void setEmailv(String emailv) {
		this.emailv = emailv;
	}
	public ArrayList<Pagos> getPagos() {
		return pagos;
	}
	public void setPagos(ArrayList<Pagos> pagos2) {
		this.pagos = pagos2;
	}
	public ArrayList<Adeudos> getAdeudos() {
		return adeudos;
	}
	public void setAdeudos(ArrayList<Adeudos> adeudos2) {
		this.adeudos = adeudos2;
	}
	
	
}
