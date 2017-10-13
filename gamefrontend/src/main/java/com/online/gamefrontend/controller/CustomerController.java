package com.online.gamefrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.online.gamebackend.dao.CustomerDao;
import com.online.gamebackend.model.CustomerModel;

@Controller
public class CustomerController {
	@Autowired
	private CustomerDao customerDao;
	
	@RequestMapping(value="/registeration", method=RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView mv=new ModelAndView("registeration","command",new CustomerModel());
		return mv;
	}
	
	@RequestMapping(value="/registeration", method=RequestMethod.POST)
	public ModelAndView register(@ModelAttribute("customer") CustomerModel customer){
		ModelAndView mv=new ModelAndView("success");
		customerDao.save(customer);
		return mv;
	}
}