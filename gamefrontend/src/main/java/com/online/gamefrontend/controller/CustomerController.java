package com.online.gamefrontend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView mv=new ModelAndView("register","command",new CustomerModel());
		return mv;
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("customer") CustomerModel customer){
		ModelAndView mv=new ModelAndView("login");
		customerDao.save(customer);
		return mv;
	}
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mv=new ModelAndView("login","command",new CustomerModel());
		return mv;
	}
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView validate(HttpServletRequest request, HttpServletResponse response){		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		CustomerModel customer=customerDao.findByEmail(email,password);	
		//request.setAttribute("customer", customer );
		ModelAndView mv=null;
		if(customer!=null){
			mv=new ModelAndView("userhome");
			//mv.getModelMap().addAttribute("customer", customer);
		}else{
			mv=new ModelAndView("login");		
			//mv.getModelMap().addAttribute("customer", customer);
		}			
		return mv;
	}

}
