package com.online.gamebackend.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class ProductModel {
	@Id
	@GeneratedValue
	@Column(name="Product_id")
	private int  id;
	@Column(name="Supplier_id")
	private String supid;
	@Column(name="Product_name")
	private String name;
	@Column(name="Product_description")
	private String description;
	@Column(name="Product_quantity")
	private String quantity ;
	@Column(name="Product_price")
	private String price;
	@Column(name="Product_image")
	private String image;
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
	public String getDescription() {
		return description ;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setContact(String quantity) {
		this.quantity = quantity;
	}
	public String getPrice() {
		return price;
	}
	public void setprice(String price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setimage(String image) {
		this.image = image;
	}
	

}
