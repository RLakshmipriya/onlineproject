package com.online.gamebackend.impl;

import java.util.List;
import java.util.function.Supplier;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.online.gamebackend.dao.SupplierDao;
import com.online.gamebackend.model.SupplierModel;


@Repository
public class SupplierImpl implements SupplierDao{
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
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	session.delete(findById(id));
	session.getTransaction().commit();
	session.close();
	
}

public void update(SupplierModel entity) {
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	session.saveOrUpdate(entity);
	session.getTransaction().commit();
	session.close();
	
}

public SupplierModel findById(int id) {
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	Criteria criteria=session.createCriteria(SupplierModel.class);
	criteria.add(Restrictions.eq("id",new Integer(id)));
	List list=criteria.list();
	session.getTransaction().commit();
	session.close();
	if(!list.isEmpty()){
		return (SupplierModel)list.get(0);
	}else{
		return null;
	}
	
}

public List<SupplierModel> findAll() {
	Session session=sessionFactory.openSession();
	String hql = "FROM SupplierModel";
	Query query = session.createQuery(hql);
	List<SupplierModel> results =  query.list();
	System.out.println(results);
	//session.getTransaction().commit();
	return results;
}


}
