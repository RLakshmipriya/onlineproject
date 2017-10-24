package com.online.gamefrontend.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.online.gamebackend.dao.ProductDao;
import com.online.gamebackend.model.ProductModel;

@Controller
public class ProductsController {
@Autowired
private ProductDao productDao;
@RequestMapping(value="/products", method=RequestMethod.GET)
public ModelAndView productsHome(){
	ModelAndView mv=new ModelAndView("products");
	return mv;
}
@RequestMapping(value="/products", method=RequestMethod.POST)
public ModelAndView returnproducts(){
	ModelAndView mv=new ModelAndView("products","command",new ProductModel());
	return mv;
}
@RequestMapping(value="/products" , method=RequestMethod.GET)
public ModelAndView products() {
	ModelAndView mv=new ModelAndView ();
	List<ProductModel> products=(List<ProductModel>) productDao.findAll();
	mv.getModelMap().addAttribute("products", products);
	return mv;
}
@RequestMapping(value="/add", method=RequestMethod.GET)
public ModelAndView addHome(){
	ModelAndView mv=new ModelAndView("add");
	return mv;
}
@RequestMapping(value="/add", method=RequestMethod.POST)
public ModelAndView returnproduct(){
	ModelAndView mv=new ModelAndView("products","command",new ProductModel());
	return mv;
}
}