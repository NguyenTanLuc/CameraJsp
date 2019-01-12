package model;

import java.util.Calendar;
import java.util.GregorianCalendar;

public class User {
	private int id;
	private String name;
	private String accont;
	private String pass;
	private String email;
	private String address;
	private String phone;
	private int idGroup;
	private String date;
	private int status;

	public User(int id,String name, String accont, String pass, String email, String address, String phone,
			int idGroup, String date, int status) {
		super();
		this.id = id;
		this.name = name;
		this.accont = accont;
		this.pass = pass;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.idGroup = idGroup;
		this.date = date;
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}

	public String getAccont() {
		return accont;
	}

	public void setAccont(String accont) {
		this.accont = accont;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getIdGroup() {
		return idGroup;
	}

	public void setIdGroup(int idGroup) {
		this.idGroup = idGroup;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}
