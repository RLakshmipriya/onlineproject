package com.online.gamebackend.dao;

import java.util.List;

import com.online.gamebackend.model.Cart;
import com.online.gamebackend.model.CartItem;

public interface CartDao {
	public List<CartItem> list(int cartId);
	public CartItem get(int id);	
	public void add(CartItem cartItem);
	public void update(CartItem cartItem);
	public void delete(CartItem cartItem);

	// fetch the CartLine based on cartId and productId
	public CartItem getByCartAndProduct(int cartId, int productId);		
		
	// updating the cart
	public void updateCart(Cart cart);
	
	// list of available cartLine
	public List<CartItem> listAvailable(int cartId);
	
}