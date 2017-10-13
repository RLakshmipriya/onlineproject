package com.online.gamebackend.impl;

import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.online.gamebackend.dao.CustomerDao;
import com.online.gamebackend.model.CustomerModel;
@Repository
public class CustomerImpl implements CustomerDao {
	@Autowired
private SessionFactory sessionFactory;
	public void save(CustomerModel entity)
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

	public void update(CustomerModel entity) {
		// TODO Auto-generated method stub
		
	}

	public CustomerModel findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Set<CustomerModel> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
