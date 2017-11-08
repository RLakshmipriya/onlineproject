package com.online.gamefrontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.online.gamebackend.dao.ProductDao;
import com.online.gamebackend.model.ProductModel;

@Controller
public class CartController {
	@Autowired
	private ProductDao productDao;
	@RequestMapping(value="/cart", method=RequestMethod.GET)
	public ModelAndView getMyProductById(Model model,@RequestParam("id") int pid) {
		ModelAndView mv=new ModelAndView("cart");
		ProductModel product =productDao.findById(pid);
		mv.getModelMap().addAttribute("product", product);
		return mv;
}
	@RequestMapping(value="/mycart", method=RequestMethod.GET)
	public ModelAndView getProductById(Model model,@RequestParam("id") int pid) {
		ModelAndView mv=new ModelAndView("mycart");
		ProductModel product =productDao.findById(pid);
		mv.getModelMap().addAttribute("product", product);
		return mv;
	}
}