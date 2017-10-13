package com.online.gamefrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.online.gamebackend.dao.CustomerDao;
import com.online.gamebackend.model.CustomerModel;

@Controller
public class IndexController {
	@Autowired
	private CustomerDao customerDao;
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView index(){
		ModelAndView mv=new ModelAndView("index");
/*		CustomerModel customer=new CustomerModel();
		customer.setName("priya");
		customer.setContact(987654321);
		customer.setEmail("priya@gmail.com");
		customer.setPlace("Madurai");
		customerDao.save(customer);*/
		
		return mv;
	}
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView login(){
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
}

