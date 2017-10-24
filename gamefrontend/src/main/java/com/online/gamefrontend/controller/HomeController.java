package com.online.gamefrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.online.gamebackend.dao.CustomerDao;
import com.online.gamebackend.model.CustomerModel;
import com.online.gamebackend.model.ProductModel;

@Controller
public class HomeController {
	@Autowired
	private CustomerDao customerDao;
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView index(){
		ModelAndView mv=new ModelAndView("home");
		return mv;
	}
	@RequestMapping(value="/home", method=RequestMethod.POST)
	public ModelAndView returnproducts(){
		ModelAndView mv=new ModelAndView("home","command",new CustomerModel());
		return mv;
	}
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public ModelAndView showHome(){
		ModelAndView mv=new ModelAndView("home");
		return mv;
	}
	@RequestMapping(value="/usrhome", method=RequestMethod.GET)
	public ModelAndView usrHome(){
		ModelAndView mv=new ModelAndView("usrhome");
		return mv;
	}
	/*@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView login(){
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}*/
	
}

