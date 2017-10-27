package com.online.gamefrontend.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import com.online.gamebackend.model.CategoryModel;
import com.online.gamebackend.model.CustomerModel;
import com.online.gamebackend.model.ProductModel;
import com.online.gamebackend.model.SupplierModel;

@Controller
public class ProductsController {
@Autowired
private ProductDao productDao;


@RequestMapping(value="/product", method=RequestMethod.GET)
public ModelAndView getProductById(Model model,@RequestParam("id") int productId) {
	ModelAndView mv=new ModelAndView("product");
	ProductModel product =productDao.findById(productId);
	mv.getModelMap().addAttribute("product", product);
	return mv;
}

@RequestMapping(value="/products" , method=RequestMethod.GET)
public ModelAndView products() {
	ModelAndView mv=new ModelAndView ("products");
	List<ProductModel> products=(List<ProductModel>)productDao.findAll();
	mv.getModelMap().addAttribute("products", products);
	return mv;
}
@RequestMapping(value="/add", method=RequestMethod.GET)
public ModelAndView addHome(){
	ModelAndView mv=new ModelAndView("add");
	return mv;
}
@RequestMapping(value="/addproduct", method=RequestMethod.GET)
public ModelAndView viewAddProduct(){
	ModelAndView mv=new ModelAndView("add","command",new ProductModel());
	//ModelAndView mv1=new ModelAndView("add","command",new Category());
	return mv;
	
}
@RequestMapping(value="/addproduct", method=RequestMethod.POST)
public ModelAndView addSupplier(@ModelAttribute("product") ProductModel product){
	productDao.save(product);
	ModelAndView mv=new ModelAndView("products");
	return mv;
}

}