package mx.redpoint.isa.bean;

public class Condominios {
	private String photo;
	private String name1;
	private String regulation;
	private String country;
	private String cp; 
	private String city;
	private String colony;
	private String street;
	private String number;
	private String phone;
	private String web;
	private Double cuotamensual;
	private Finanzas[] finanzas;
	
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getName1() {
		return name1;
	}
	public void setName1(String name1) {
		this.name1 = name1;
	}
	public String getRegulation() {
		return regulation;
	}
	public void setRegulation(String regulation) {
		this.regulation = regulation;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCp() {
		return cp;
	}
	public void setCp(String cp) {
		this.cp = cp;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getColony() {
		return colony;
	}
	public void setColony(String colony) {
		this.colony = colony;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getWeb() {
		return web;
	}
	public void setWeb(String web) {
		this.web = web;
	}
	public Finanzas[] getFinanzas() {
		return finanzas;
	}
	public void setFinanzas(Finanzas[] finanzas) {
		this.finanzas = finanzas;
	}
	public Double getCuotamensual() {
		return cuotamensual;
	}
	public void setCuotamensual(Double cuotamensual) {
		this.cuotamensual = cuotamensual;
	}
}
