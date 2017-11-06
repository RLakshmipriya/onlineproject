package com.online.gamebackend.dao;

import java.util.List;


import com.online.gamebackend.model.CategoryModel;

public interface CategoryDao {
	public void save(CategoryModel entity);
	public void delete(int id);
	public void update(CategoryModel entity);
	public CategoryModel findById(int id);
	public List<CategoryModel> findAll();

}
