package com.online.gamebackend.dao;

import java.util.List;


import com.online.gamebackend.model.CategoryModel;

public interface CategoryDao {
	public void save(CategoryModel entity);
	public void delete(int cid);
	public void update(CategoryModel entity);
	public CategoryModel findById(int cid);
	public List<CategoryModel> findAll();

}
