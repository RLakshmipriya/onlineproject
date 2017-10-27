package com.online.gamefrontend.controller;

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

@Controller
public class CategoryController {
@Autowired
private CategoryDao categoryDao;

@RequestMapping(value="/addcategory", method=RequestMethod.GET)
public ModelAndView viewAddCategory(){
	ModelAndView mv=new ModelAndView("category","command",new CategoryModel());	
	return mv;
	
}
@RequestMapping(value="/addcategory", method=RequestMethod.POST)
public ModelAndView addCategory(@ModelAttribute("category") CategoryModel category){
	ModelAndView mv=new ModelAndView("products");
	categoryDao.save(category);
	System.out.println(category.getCname());
	System.out.println(category.getCdesc());
	return mv;
}
}
