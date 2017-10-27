package com.online.gamefrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.online.gamebackend.dao.SuppilerDao;
import com.online.gamebackend.model.SupplierModel;


@Controller
public class SupplierController {
	@Autowired
	private SuppilerDao supplierDao;
	@RequestMapping(value="/addsupplier", method=RequestMethod.GET)
	public ModelAndView viewAddSupplier(){
		ModelAndView mv=new ModelAndView("supplier","command",new SupplierModel());
		return mv;
		
}
	@RequestMapping(value="/addsupplier", method=RequestMethod.POST)
	 public ModelAndView addSupplier(@ModelAttribute("supplier") SupplierModel supplier){
		ModelAndView mv=new ModelAndView("products");
		supplierDao.save(supplier);
		return mv;
	 }	
}
