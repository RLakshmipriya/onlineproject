package com.online.gamebackend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Categories")
public class CategoryModel {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="category_id")//,unique=true
	private int cid;
	@Column(name="category_name")
	private String cname;
	@Column(name="category_description")
	private String  cdescription;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCdescription() {
		return cdescription;
	}
	public void setCdescription(String cdescription) {
		this.cdescription = cdescription;
	}
	
	

}
