package com.online.gamebackend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class CustomerModel {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Customer_id")
	private int id;
	@Column(name="Customer_name")
	private String name;
	@Column(name="Customer_email",unique=true)
	private String email;
	@Column(name="customer_address")
	private String address;
	@Column(name="Customer_contact")
	private String contact;
	@Column(name="Customer_password")
	private String password;
	@Column(name="Customer_confirmpassword")
	private String confirmpassword;
	@Column(name="customer_role")
	private String role;
	@Column(name="customer_enabled")
	private boolean enabled;
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
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
	
	
	

}
