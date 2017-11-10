package com.online.gamebackend.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Item")
public class CartItem implements Serializable {
	private static final long serialVersionUID = -4314427089896169685L;
	@Id
	@GeneratedValue
	private int id;
		
		@OneToOne
		private ProductModel product;
		
		@Column(name = "cart_id")
		private int cartId;	
		
		@Column(name = "product_count")
		private int productCount;
		
		private double total;
		
		@Column(name = "buying_price")
		private double buyingPrice;
		
		@Column(name = "is_available")
		private boolean available = true;
		
		public double getBuyingPrice() {
			return buyingPrice;
		}
		public void setBuyingPrice(double buyingPrice) {
			this.buyingPrice = buyingPrice;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public ProductModel getProduct() {
			return product;
		}
		public void setProduct(ProductModel product) {
			this.product = product;
		}
		public int getCartId() {
			return cartId;
		}
		public void setCartId(int cartId) {
			this.cartId = cartId;
		}
		public int getProductCount() {
			return productCount;
		}
		public void setProductCount(int productCount) {
			this.productCount = productCount;
		}
		public double getTotal() {
			return total;
		}
		public void setTotal(double total) {
			this.total = total;
		}
		public boolean isAvailable() {
			return available;
		}
		public void setAvailable(boolean available) {
			this.available = available;
		}
}
