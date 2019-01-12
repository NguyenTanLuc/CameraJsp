package model;

public class KeySaleOf {
	private int id;
	private String title;
	private String key;
	private int percent;
	private int quality;
	private int status;
	public KeySaleOf(int id, String title, String key, int percent, int quality, int status) {
		super();
		this.id = id;
		this.title = title;
		this.key = key;
		this.percent = percent;
		this.quality = quality;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public int getPercent() {
		return percent;
	}
	public void setPercent(int percent) {
		this.percent = percent;
	}
	public int getQuality() {
		return quality;
	}
	public void setQuality(int quality) {
		this.quality = quality;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	

}
