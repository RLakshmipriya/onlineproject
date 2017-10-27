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
	private int  pid;
	@Column(name="Supplier_id")
	private String supid;
	@Column(name="Product_name")
	private String pname;
	@Column(name="Product_description")
	private String pdescription;
	@Column(name="Product_quantity")
	private String pquantity ;
	@Column(name="Product_price")
	private String pprice;
	@Column(name="Product_image")
	private String pimage;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getSupid() {
		return supid;
	}
	public void setSupid(String supid) {
		this.supid = supid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdescription() {
		return pdescription;
	}
	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}
	public String getPquantity() {
		return pquantity;
	}
	public void setPquantity(String pquantity) {
		this.pquantity = pquantity;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	
}
