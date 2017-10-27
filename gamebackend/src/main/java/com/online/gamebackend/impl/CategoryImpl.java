package com.online.gamebackend.impl;

import java.util.List;
import java.util.Locale.Category;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.online.gamebackend.dao.CategoryDao;
import com.online.gamebackend.model.CategoryModel;

@Repository
public class CategoryImpl implements CategoryDao {
	
@Autowired
private SessionFactory sessionFactory;
public void save(Category entity) {
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	session.save(entity);
	session.getTransaction().commit();
	session.close();
	
}
public void delete(int catid) {
	// TODO Auto-generated method stub
	
}

public void update(Category entity) {
	// TODO Auto-generated method stub
	
}

public CategoryModel findBycatId(int id) {
	// TODO Auto-generated method stub
	return null;
}

public List<CategoryDao> findAllCat() {
	// TODO Auto-generated method stub
	return null;
}
public void save(CategoryModel entity) {
	// TODO Auto-generated method stub
	
}
public void update(CategoryModel entity) {
	// TODO Auto-generated method stub
	
}
public CategoryModel findById(int catid) {
	// TODO Auto-generated method stub
	return null;
}
public List<CategoryModel> findAll() {
	// TODO Auto-generated method stub
	return null;
}
}
