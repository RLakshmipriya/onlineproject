package com.online.gamebackend.impl;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.online.gamebackend.dao.CategoryDao;
import com.online.gamebackend.model.CategoryModel;

@Repository
public class CategoryImpl implements CategoryDao {
	
@Autowired
private SessionFactory sessionFactory;
public void save(CategoryModel entity) {
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	session.save(entity);
	session.getTransaction().commit();
	session.close();
	
}

public void delete(int cid) {
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	session.delete(findById(cid));
	session.getTransaction().commit();
	session.close();
	
}
public void update(CategoryModel entity) {
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	session.saveOrUpdate(entity);
	session.getTransaction().commit();
	session.close();
	
}
public CategoryModel findById(int cid) {
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	Criteria criteria=session.createCriteria(CategoryModel.class);
	criteria.add(Restrictions.eq("cid", new Integer(cid)));
	List list=criteria.list();
	session.getTransaction().commit();
	session.close();
	if(!list.isEmpty()){
		return (CategoryModel)list.get(0);
	}else{
		return null;
	}
}

public List<CategoryModel> findAll() {
	Session session=sessionFactory.openSession();
	String hql = "FROM CategoryModel";
	Query query = session.createQuery(hql);
	List<CategoryModel> results =  query.list();
	System.out.println(results);
	//session.getTransaction().commit();
	return results;
}


}
