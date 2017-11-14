package com.online.gamebackend.model;


import java.io.Serializable;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Cart")
public class Cart implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private int id;
	
	@OneToMany
	//private Map<String,CartItem> cartItems;
	private List<CartItem> cartItems;
	
	@Column(name = "grand_total")	
	private double grandTotal;
	
	@Column(name = "cart_Item")
	private CartItem cartItem;
	


	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public List<CartItem> getCartItems() {
		return cartItems;
	}



	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}



	public double getGrandTotal() {
		return grandTotal;
	}



	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}



	public CartItem getCartItem() {
		return cartItem;
	}



	public void setCartItem(CartItem cartItem) {
		this.cartItem = cartItem;
	}



	@Override
	public String toString() {
		return "Cart [id=" + id + ", grandTotal=" + grandTotal + "]";//", cartItem=" + cartItem +
	}

	
}
