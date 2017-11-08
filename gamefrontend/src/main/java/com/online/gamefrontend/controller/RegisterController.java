package com.online.gamefrontend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.online.gamebackend.dao.CustomerDao;
import com.online.gamebackend.model.CustomerModel;

@Controller
public class RegisterController {
	@Autowired
	private CustomerDao customerDao;
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView register(){
		//ModelAndView mv=new ModelAndView("register");
		ModelAndView mv=new ModelAndView("register","command",new CustomerModel());
		return mv;
	}
	@RequestMapping(value="/register", method=RequestMethod.POST)
	 public ModelAndView register(HttpServletRequest request,HttpServletResponse response){
		CustomerModel customer=new CustomerModel();
		customer.setName(request.getParameter("name"));
		customer.setEmail(request.getParameter("email"));
		customer.setAddress(request.getParameter("address"));
		customer.setContact(request.getParameter("contact"));
		customer.setPassword(request.getParameter("password"));
		customer.setConfirmpassword(request.getParameter("confirmpassword"));
		customer.setRole("ROLE_USER");
		ModelAndView mv=new ModelAndView("login");
		customerDao.save(customer);
		return mv;
	 }
}
