package com.online.gamebackend.dao;

import java.util.Set;

import com.online.gamebackend.model.CustomerModel;

public interface CustomerDao {
	public void save(CustomerModel entity);
	public void delete(int id);
	public void update(CustomerModel entity);
	public CustomerModel findById(int id);
	public CustomerModel findByEmail(String email);
	public CustomerModel findByEmail(String email,String password);
	public boolean validate(String email,String password);
	public Set<CustomerModel> findAll();

	
}
