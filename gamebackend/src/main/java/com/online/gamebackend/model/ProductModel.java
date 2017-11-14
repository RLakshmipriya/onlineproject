package com.online.gamebackend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class ProductModel {
	@Id
	@GeneratedValue
	@Column(name="product_id")
	private int  pid;
	@ManyToOne	
	private SupplierModel sid;
	@Column(name="product_name")
	private String pname;
	@ManyToOne
	private CategoryModel cid;
	@Column(name="product_description")
	private String  pdescription;
	@Column(name="product_stock")
	private int pstock;
	@Column(name="product_price")
	private float pprice;
	@Column(name="product_img")
	private String pimg;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public SupplierModel getSid() {
		return sid;
	}
	public void setSid(SupplierModel sid) {
		this.sid = sid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public CategoryModel getCid() {
		return cid;
	}
	public void setCid(CategoryModel cid) {
		this.cid = cid;
	}
	public String getPdescription() {
		return pdescription;
	}
	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}
	public int getPstock() {
		return pstock;
	}
	public void setPstock(int pstock) {
		this.pstock = pstock;
	}
	public float getPprice() {
		return pprice;
	}
	public void setPprice(float pprice) {
		this.pprice = pprice;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	
	
}
