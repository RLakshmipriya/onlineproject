package com.online.gamefrontend.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.online.gamebackend.dao.CategoryDao;
import com.online.gamebackend.dao.ProductDao;
import com.online.gamebackend.dao.SupplierDao;
import com.online.gamebackend.model.CategoryModel;
import com.online.gamebackend.model.ProductModel;
import com.online.gamebackend.model.SupplierModel;

@Controller
public class SupplierController{
	@Autowired
	private ProductDao productDao;
	@Autowired
	private SupplierDao supplierDao;
	@Autowired
	private CategoryDao categoryDao;
	
	/*Supplier Page-stock*/
		
	@RequestMapping(value="/stock" , method=RequestMethod.GET)
	public ModelAndView MyProducts() {
		ModelAndView mv=new ModelAndView ("stock");
		List<ProductModel> products=productDao.findAll();
		List<CategoryModel> categories=categoryDao.findAll();
		List<SupplierModel> suppliers=supplierDao.findAll();
		mv.getModelMap().addAttribute("products", products);
		mv.getModelMap().addAttribute("categories", categories);
		mv.getModelMap().addAttribute("suppliers", suppliers);
		return mv;
	}
	
	@RequestMapping(value="/stock" , method=RequestMethod.POST)
	public ModelAndView viewMyProducts() {
		ModelAndView mv=new ModelAndView ("stock");
		List<ProductModel> products=productDao.findAll();
		mv.getModelMap().addAttribute("products", products);
		List<CategoryModel> categories=categoryDao.findAll();
		mv.getModelMap().addAttribute("categories", categories);
		List<SupplierModel> suppliers=supplierDao.findAll();
		mv.getModelMap().addAttribute("suppliers", suppliers);
		return mv;
	}
	@RequestMapping(value="/admin/stock" , method=RequestMethod.GET)
	public ModelAndView myStocks() {
		ModelAndView mv=new ModelAndView ("stock");
		List<ProductModel> products=productDao.findAll();
		List<CategoryModel> categories=categoryDao.findAll();
		List<SupplierModel> suppliers=supplierDao.findAll();
		mv.getModelMap().addAttribute("products", products);
		mv.getModelMap().addAttribute("categories", categories);
		mv.getModelMap().addAttribute("suppliers", suppliers);
		return mv;
	}
	@RequestMapping(value="/admin/stock" , method=RequestMethod.POST)
	public ModelAndView viewMystocks() {
		ModelAndView mv=new ModelAndView ("stock");
		List<ProductModel> products=productDao.findAll();
		mv.getModelMap().addAttribute("products", products);
		List<CategoryModel> categories=categoryDao.findAll();
		mv.getModelMap().addAttribute("categories", categories);
		List<SupplierModel> suppliers=supplierDao.findAll();
		mv.getModelMap().addAttribute("suppliers", suppliers);
		return mv;
	}
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public ModelAndView viewAdd(){
		ModelAndView mv=new ModelAndView("add");
		//ModelAndView mv1=new ModelAndView("add","command",new Category());
		return mv;
		
}	
	
	@RequestMapping(value="/admin/addsupplier", method=RequestMethod.GET)
	public ModelAndView viewAddSupplier(){
		ModelAndView mv=new ModelAndView("add","command",new SupplierModel());
		//ModelAndView mv1=new ModelAndView("add","command",new Category());
		return mv;
		
}
		
	@RequestMapping(value="/admin/addsupplier", method=RequestMethod.POST)
	 public ModelAndView addSupplier(@ModelAttribute("supplier") SupplierModel supplier){
		supplierDao.save(supplier);
		ModelAndView mv=new ModelAndView("redirect:stock");
		return mv;
	 }	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public ModelAndView viewUpdate(){
		ModelAndView mv=new ModelAndView("update");
		return mv;
		
	}	
	@RequestMapping(value="/admin/updatesupplier", method=RequestMethod.GET)
	public ModelAndView viewUpdateSupplier(Model model,@RequestParam("id") int id){
		ModelAndView mv=new ModelAndView("update");
		SupplierModel supplier=supplierDao.findById(id);
		mv.getModelMap().addAttribute("suppliers", supplier);
		return mv;
	}
	@RequestMapping(value="/admin/updatesupplier", method=RequestMethod.POST)
	// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
	public ModelAndView updateSupplier(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("redirect:stock");
		SupplierModel supplier=new SupplierModel();
		supplier.setSid(Integer.parseInt(request.getParameter("id")));
		supplier.setSname(request.getParameter("name"));
		supplier.setSemail(request.getParameter("email"));
		supplier.setSaddress(request.getParameter("address"));
		supplier.setScontact(request.getParameter("contact"));
		supplierDao.update(supplier);
		mv.getModelMap().addAttribute("stock", supplierDao.findAll());
		return mv;
		
	 }
	@RequestMapping(value="/admin/deletesupplier", method=RequestMethod.GET)
	public ModelAndView viewDelete(@RequestParam("id") int id){
		ModelAndView mv=new ModelAndView("redirect:stock","command",new SupplierModel());
		supplierDao.delete(id);
		mv.getModelMap().addAttribute("stock", supplierDao.findAll());
		return mv;
	}
	
}
	
	
	
	
	
	
	
	