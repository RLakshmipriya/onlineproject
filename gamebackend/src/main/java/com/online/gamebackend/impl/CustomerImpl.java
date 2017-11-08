package com.online.gamebackend.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Query;
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

		public Set<CustomerModel> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	/*public CustomerModel findById(String email) {
		Session session=sessionFactory.openSession();
		String hql = "FROM CustomerM C WHERE C.email = '" + email +"'" ;
		Query query = session.createQuery(hql);
		List results = query.list();
		if(results!=null)
			return (CustomerModel) results.get(0);
		
		else
			return null;		
		
	}*/
		public CustomerModel findByEmail(String email,String password) {
			// TODO Auto-generated method stub
			List results = null;
			Session session=sessionFactory.openSession();
			String hql = "FROM Customer C WHERE C.email = '" + email +"'AND C.password ='" + password + "'" ;
			Query query = session.createQuery(hql);
			
			results = query.list();
			if(results!=null)
				return (CustomerModel) results.get(0);
			
			else
				return null;	
		}

		public boolean validate(String email, String password) {
			Session session=sessionFactory.openSession();
			String hql = "FROM Customer C WHERE C.email = '" + email +"'AND C.password ='" + password + "'" ;
			Query query = session.createQuery(hql);
			List results = null;
			results = query.list();
			if(results!=null)
				return true;
			
			else
				return false;	
		}


		public CustomerModel findById(int id) {
			// TODO Auto-generated method stub
			return null;
		}


		
		
	}



	
	
	

