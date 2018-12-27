package model;

public class Catelogy {
	
	int id;
	String name;
	int idRoot;
	int status;
	String icon;
	public Catelogy(int id, String name, int idRoot, int status, String icon) {
		super();
		this.id = id;
		this.name = name;
		this.idRoot = idRoot;
		this.status = status;
		this.icon = icon;
	}
	public Catelogy(int id, String name, int idRoot, int status) {
		super();
		this.id = id;
		this.name = name;
		this.idRoot = idRoot;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getIdRoot() {
		return idRoot;
	}
	public void setIdRoot(int idRoot) {
		this.idRoot = idRoot;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
}

