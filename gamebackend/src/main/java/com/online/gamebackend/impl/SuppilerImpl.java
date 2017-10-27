package com.online.gamebackend.impl;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.online.gamebackend.dao.SuppilerDao;
import com.online.gamebackend.model.ProductModel;
import com.online.gamebackend.model.SupplierModel;


@Repository
public class SuppilerImpl implements SuppilerDao{
@Autowired
private SessionFactory sessionFactory;
public void save(SupplierModel entity)
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

public void update(SupplierModel entity) {
	// TODO Auto-generated method stub
	
}

public SupplierModel findById(int id) {
	return (SupplierModel)sessionFactory.openSession().get(SupplierModel.class,id);
}

public List<SupplierModel> findAll() {
	Session s=sessionFactory.openSession();
	s.beginTransaction();
	Query query=s.createQuery("from SupplierModel");
	List<SupplierModel> list=query.list();
	System.out.println(list);
	s.getTransaction().commit();
	return list;
}	


}
