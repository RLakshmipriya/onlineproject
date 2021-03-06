package com.online.gamebackend.dao;

import java.util.List;
import com.online.gamebackend.model.ProductModel;

public interface ProductDao {
	public void save(ProductModel entity);
	public void delete(int id);
	public void update(ProductModel entity);
	public ProductModel findById(int id);
	public List<ProductModel> findAll();


}
