package mx.redpoint.isa.bean;

public class Principaladmins {
	private String photo;
	private String name;
	private String lastname;
	private String mail;
	private String password;
	private Avisos[] avisos;

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Avisos[] getAvisos() {
		return avisos;
	}

	public void setAvisos(Avisos[] avisos) {
		this.avisos = avisos;
	}
}
