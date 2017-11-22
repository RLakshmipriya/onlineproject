package com.online.gamefrontend.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.online.gamebackend.dao.ProductDao;
import com.online.gamebackend.model.Cart;
import com.online.gamebackend.model.CartItem;
import com.online.gamebackend.model.ProductModel;

@Controller
public class CartController {
	@Autowired
	private ProductDao productDao;

	@RequestMapping(value="/cart", method=RequestMethod.GET)
	public ModelAndView getCartItems(Model model,HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv=new ModelAndView("cart");
		/*Cart cart = cartDao.listAvailable(cartId);
		int cartId=cart.getId();*/
		//String session=request.getSession().getId();
		/*cart =(Cart) cartDao.list(cartId);
		mv.getModelMap().addAttribute("cart", cart);*/
		return mv;
	}
	@RequestMapping(value="/custdetails", method=RequestMethod.GET)
	public ModelAndView getDetails(Model model,HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv=new ModelAndView("custdetails");
	
		return mv;
	}
	
	@RequestMapping(value="/addToCart", method=RequestMethod.GET)
	public ModelAndView getProductById(Model model,@RequestParam("id") int pid, @RequestParam("txtQuantity") int quantity, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv=new ModelAndView("redirect:products");
		ProductModel product =productDao.findById(pid);
		HttpSession session=request.getSession(false);
		Cart cart=null;
		if(session!=null){
			cart=(Cart) session.getAttribute("cart");
			CartItem item=new CartItem();
			item.setProduct(product);
			item.setQuantity(quantity);			
			if(cart==null){				
				cart=new Cart();	
			}
			boolean state=false;
			for(CartItem c : cart.getItems()){
				if(c.getProduct().getPname().equals(product.getPname())){
					c.setQuantity(item.getQuantity() + c.getQuantity());
					state=true;
				}
			}
			if(!state)
			cart.getItems().add(item);
		}	
		session.setAttribute("cart", cart);
		return mv;
	}
	@RequestMapping(value="/deleteitem", method=RequestMethod.GET)
	public ModelAndView getDeleteById(Model model,@RequestParam("id") int pid, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv=new ModelAndView("redirect:products");
		ProductModel product =productDao.findById(pid);
		HttpSession session=request.getSession(false);
		Cart cart=null;
		if(session!=null){
			cart=(Cart) session.getAttribute("cart");
			CartItem item=new CartItem();
			for(CartItem c : cart.getItems()){
				if(c.getProduct().getPname().equals(product.getPname())){
					item=cart.getItems().set(c.getId(), c);
					cart.getItems().remove(item);					
				}
			}
		}
		//cart.getItems();	
		session.setAttribute("cart", cart);
		return mv;
	
	}

}