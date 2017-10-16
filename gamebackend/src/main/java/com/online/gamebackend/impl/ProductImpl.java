package com.online.gamebackend.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.online.gamebackend.dao.ProductDao;
import com.online.gamebackend.model.ProductModel;

@Repository
public class ProductImpl implements ProductDao {
	@Autowired
private SessionFactory sessionFactory;
	public void save(ProductModel entity)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(entity);
		session.getTransaction().commit();
		session.close();
	}
	

	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	public void update(ProductModel entity) {
		// TODO Auto-generated method stub
		
	}

	public ProductModel findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Set<ProductModel> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public ProductModel findById(String email) {
		Session session=sessionFactory.openSession();
		String hql = "FROM CustomerM C WHERE C.email = '" + email +"'" ;
		Query query = session.createQuery(hql);
		List results = query.list();
		if(results!=null)
			return (ProductModel) results.get(0);
		
		else
			return null;		
		
	}
	public boolean validate(String email, String password) {
		Session session=sessionFactory.openSession();
		String hql = "FROM Customer C WHERE C.email = '" + email +"' AND C.password ='" + password + "'" ;
		Query query = session.createQuery(hql);
		List results = query.list();
		if(results!=null)
			return true;
		
		else
			return false;		
		
	}
	
}

