package com.online.gamebackend.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Cart")
public class Cart implements Serializable   {
	@Id
	@GeneratedValue
	private int id;

	@Column(name = "grand_total")	
	private double grandTotal;
	@Column(name = "cart_Item")
	private int cartItem;
	
	/*
	 * setter and getters for the fields
	 * */
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	
	
	public int getCartItem() {
		return cartItem;
	}
	public void setCartItem(int cartItem) {
		this.cartItem = cartItem;
	}
	@Override
	public String toString() {
		return "Cart [id=" + id + ", grandTotal=" + grandTotal + ", cartItem=" + cartItem + "]";
	}
}
