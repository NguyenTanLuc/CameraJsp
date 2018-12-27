package model;

import java.io.Serializable;

public class Product implements Serializable{
	private int id;
	private int idCategory;
	private String name;
	private int price;
	private int status;
	private int quatity;
	private String image;
	private String detai;
	private String thongso;


	public Product(Builder builder) {
		this.id = builder.id;
		this.idCategory = builder.idCategory;
		this.name = builder.name;
		this.price = builder.price;
		this.status = builder.status;
		this.quatity = builder.quatity;
		this.image = builder.image;
		this.detai = builder.detai;
		this.thongso = builder.thongso;
	}

	public static class Builder {
		private int id;
		private int idCategory;
		private String name;
		private int price;
		private int status;
		private int quatity;
		private String image;
		private String detai;
		private String thongso;

		public Product build() {
			return new Product(this);
		}

		public Builder setId(int id) {
			this.id = id;
			return this;
		}

		public Builder setIdCategory(int idCategory) {
			this.idCategory = idCategory;
			return this;
		}

		public Builder setName(String name) {
			this.name = name;
			return this;
		}

		public Builder setPrice(int price) {
			this.price = price;
			return this;
		}

		public Builder setStatus(int status) {
			this.status = status;
			return this;
		}

		public Builder setQuatity(int quatity) {
			this.quatity = quatity;
			return this;
		}

		public Builder setImage(String image) {
			this.image = image;
			return this;
		}

		public Builder setDetai(String detai) {
			this.detai = detai;
			return this;
		}
		public Builder setThongSo(String thongso) {
			this.thongso = thongso;
			return this;
		}
	}
		public int getId() {
			return id;
		}

		public int getIdCategory() {
			return idCategory;
		}

		public String getName() {
			return name;
		}

		public int getPrice() {
			return price;
		}

		public int getStatus() {
			return status;
		}

		public int getQuatity() {
			return quatity;
		}

		public String getImage() {
			return image;
		}

		public String getDetai() {
			return detai;
		}
		public String getThongso() {
			return thongso;
		}


}
