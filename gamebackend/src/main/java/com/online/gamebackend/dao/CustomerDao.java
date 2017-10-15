package com.online.gamebackend.dao;

import java.util.Set;

import com.online.gamebackend.model.CustomerModel;

public interface CustomerDao {
	public void save(CustomerModel entity);
	public void delete(int id);
	public void update(CustomerModel entity);
	public CustomerModel findById(int id);
	public Set<CustomerModel> findAll();

	
}
