package com.online.gamebackend.dao;

import java.util.List;
import java.util.Set;
import com.online.gamebackend.model.CartItem;

	public interface CartDao {
		void addItem(CartItem item);
		void deleteItem(int id);
		List<CartItem> getAllItems();
		CartItem getItemById(int id);
}
