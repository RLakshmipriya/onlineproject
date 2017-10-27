package com.online.gamebackend.dao;

import java.util.List;

import com.online.gamebackend.model.ProductModel;
import com.online.gamebackend.model.SupplierModel;
import com.online.gamebackend.model.SupplierModel;

public interface SuppilerDao {
	public void save(SupplierModel supplier);
	public void delete(int id);
	public void update(SupplierModel entity);
	public SupplierModel findById(int id);
	public List<SupplierModel> findAll();

}
