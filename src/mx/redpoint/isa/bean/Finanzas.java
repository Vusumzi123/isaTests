package mx.redpoint.isa.bean;

public class Finanzas {
	private String alias;
	private String tipo;
	private Double montoinicial;
	private String numerocuenta;
	private String numerotarjeta;
	private String numeroclabe;
	private Iegresos[] ingresos; 
	private Iegresos[] egresos;
	public String getAlias() {
		return alias;
	}
	public void setAlias(String alias) {
		this.alias = alias;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public Double getMontoinicial() {
		return montoinicial;
	}
	public void setMontoinicial(Double montoinicial) {
		this.montoinicial = montoinicial;
	}
	public String getNumerocuenta() {
		return numerocuenta;
	}
	public void setNumerocuenta(String numerocuenta) {
		this.numerocuenta = numerocuenta;
	}
	public String getNumerotarjeta() {
		return numerotarjeta;
	}
	public void setNumerotarjeta(String numerotarjeta) {
		this.numerotarjeta = numerotarjeta;
	}
	public String getNumeroclabe() {
		return numeroclabe;
	}
	public void setNumeroclabe(String numeroclabe) {
		this.numeroclabe = numeroclabe;
	}
	public Iegresos[] getIngresos() {
		return ingresos;
	}
	public void setIngresos(Iegresos[] ingresos) {
		this.ingresos = ingresos;
	}
	public Iegresos[] getEgresos() {
		return egresos;
	}
	public void setEgresos(Iegresos[] egresos) {
		this.egresos = egresos;
	}
	
}
