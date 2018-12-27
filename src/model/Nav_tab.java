package model;

public class Nav_tab {
	int id;
	String name;
	int id_slide;
	String img;
	int status;
	public Nav_tab(int id, String name, int id_slide, String img, int status) {
		this.id = id;
		this.name = name;
		this.id_slide = id_slide;
		this.img = img;
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
	public int getId_slide() {
		return id_slide;
	}
	public void setId_slide(int id_slide) {
		this.id_slide = id_slide;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	

}
