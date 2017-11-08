package com.online.gamebackend.impl;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.online.gamebackend.dao.ProductDao;
import com.online.gamebackend.model.ProductModel;

@Repository
public class ProductImpl implements ProductDao{
	@Autowired
	private SessionFactory sessionFactory;
	public void save(ProductModel entity) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(entity);
		session.getTransaction().commit();
		session.close();
		
	}
	
	public void delete(int pid) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.delete(findById(pid));
		session.getTransaction().commit();
		session.close();
		
		
	}
	
	
	
	public void update(ProductModel entity) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(entity);
		session.getTransaction().commit();
		session.close();
		
	}
	/*return (Product)sessionFactory.openSession().get(Product.class,pid);*/
	

	public ProductModel findById(int pid) {
		
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Criteria criteria=session.createCriteria(ProductModel.class);
		criteria.add(Restrictions.eq("pid",new Integer(pid)));
		List list=criteria.list();
		session.getTransaction().commit();
		session.close();
		if(!list.isEmpty()){
			return (ProductModel)list.get(0);
		}else{
			return null;
		}
	}

	public List<ProductModel> findAll() {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		String hql = "FROM ProductModel";
		Query query = session.createQuery(hql);
		List<ProductModel> results = (List<ProductModel>) query.list();
		System.out.println(results);
		session.getTransaction().commit();
		session.close();
		return results;
		
	}

	
}