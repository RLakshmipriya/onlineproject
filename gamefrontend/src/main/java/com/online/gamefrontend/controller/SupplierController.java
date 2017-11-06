package com.online.gamefrontend.controller;


import java.util.List;


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
	public ModelAndView myProducts() {
		ModelAndView mv=new ModelAndView ("stock");
		List<ProductModel> products=productDao.findAll();
		List<CategoryModel> categories=categoryDao.findAll();
		mv.getModelMap().addAttribute("products", products);
		mv.getModelMap().addAttribute("categories", categories);
		return mv;
	}
	
	@RequestMapping(value="/stock" , method=RequestMethod.POST)
	public ModelAndView viewMyProducts() {
		ModelAndView mv=new ModelAndView ("stock");
		List<ProductModel> products=productDao.findAll();
		mv.getModelMap().addAttribute("products", products);
		List<CategoryModel> categories=categoryDao.findAll();
		mv.getModelMap().addAttribute("categories", categories);
		return mv;
	}
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public ModelAndView getProductById(Model model,@RequestParam("id") int pid) {
		ModelAndView mv=new ModelAndView("view");
		ProductModel product =productDao.findById(pid);
		mv.getModelMap().addAttribute("product", product);
		CategoryModel category =categoryDao.findById(pid);
		mv.getModelMap().addAttribute("category", category);
		return mv;
	}
	/*@RequestMapping(value="/view", method=RequestMethod.GET)
	public ModelAndView getProductById(Model model,@RequestParam("id") int pid) {
		ModelAndView mv=new ModelAndView("view");
		ProductModel product =productDao.findById(pid);
		mv.getModelMap().addAttribute("product", product);
		return mv;
	}*/
	
		
	
	@RequestMapping(value="/addsupplier", method=RequestMethod.GET)
	public ModelAndView viewAddSupplier(){
		ModelAndView mv=new ModelAndView("add","command",new SupplierModel());
		//ModelAndView mv1=new ModelAndView("add","command",new Category());
		return mv;
		
}
		
	@RequestMapping(value="/addsupplier", method=RequestMethod.POST)
	 public ModelAndView addSupplier(@ModelAttribute("supplier") SupplierModel supplier){
		supplierDao.save(supplier);
		ModelAndView mv=new ModelAndView("stock");
		return mv;
	 }	
	
}
	
	
	
	
	
	
	
	