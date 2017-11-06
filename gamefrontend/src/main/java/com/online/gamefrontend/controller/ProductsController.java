package com.online.gamefrontend.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.online.gamebackend.dao.CategoryDao;
import com.online.gamebackend.dao.ProductDao;
import com.online.gamebackend.dao.SupplierDao;
import com.online.gamebackend.model.CategoryModel;
import com.online.gamebackend.model.ProductModel;
import com.online.gamebackend.model.SupplierModel;

@Controller
public class ProductsController {
	
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private SupplierDao supplierDao;

	@RequestMapping(value="/products" , method=RequestMethod.GET)
	public ModelAndView products() {
		ModelAndView mv=new ModelAndView ("products");
		List<ProductModel> products=productDao.findAll();
		mv.getModelMap().addAttribute("products", products);
	    return mv;
	}
	@RequestMapping(value="/product", method=RequestMethod.GET)
	public ModelAndView getMyProductById(Model model,@RequestParam("pid") int pid) {
		ModelAndView mv=new ModelAndView("product");
		ProductModel product =productDao.findById(pid);
		mv.getModelMap().addAttribute("product", product);
		return mv;
	}
	@RequestMapping(value="/products" , method=RequestMethod.POST)
	public ModelAndView myProducts() {
		ModelAndView mv=new ModelAndView ("products");
		List<ProductModel> products=productDao.findAll();
		mv.getModelMap().addAttribute("products", products);
		return mv;
	}
	
	
	/*@RequestMapping(value="/product", method=RequestMethod.GET)
	public ModelAndView getProductById(Model model,@RequestParam("id") int pid) {
		ModelAndView mv=new ModelAndView("product");
		ProductModel product =productDao.findById(pid);
		mv.getModelMap().addAttribute("product", product);
		return mv;
	}
	*/
	/*Add Products*/
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public ModelAndView viewAdd(){
		ModelAndView mv=new ModelAndView("add");
		//ModelAndView mv1=new ModelAndView("add","command",new Category());
		return mv;
	}
	
	@RequestMapping(value="/addproduct", method=RequestMethod.GET)
	public ModelAndView viewAddProduct(){
		ModelAndView mv=new ModelAndView("add","command",new ProductModel());
		mv.getModelMap().addAttribute("categories", categoryDao.findAll());
		mv.getModelMap().addAttribute("supplier", supplierDao.findAll());
		
		//ModelAndView mv1=new ModelAndView("add","command",new Category());
		return mv;
		
}
	@RequestMapping(value="/addproduct", method=RequestMethod.POST)
	// public ModelAndView addProduct(@ModelAttribute("product") Product product, HttpServletRequest request){
	 public ModelAndView addProduct(HttpServletRequest request, HttpServletResponse response){
		CategoryModel category=categoryDao.findById(Integer.parseInt(request.getParameter("cat")));
		SupplierModel supplier=supplierDao.findById(Integer.parseInt(request.getParameter("sid")));
		ProductModel product =new ProductModel();
		product.setPname(request.getParameter("pname"));
		product.setPstock(Integer.parseInt(request.getParameter("pstock")));
		product.setPdescription(request.getParameter("pdescription"));
		product.setPprice(Float.parseFloat(request.getParameter("pprice"))) ;
		product.setPimg(request.getParameter("pimg"));
		product.setCat(category);
		product.setSid(supplier);
		productDao.save(product);
		ModelAndView mv=new ModelAndView("redirect:stock");
		//mv.getModelMap().addAttribute("stock", productDao.findAll());
		return mv;
	 }
	
	@RequestMapping(value="/deleteproduct", method=RequestMethod.GET)
	public ModelAndView viewDelete(@RequestParam("id") int id){
		ModelAndView mv=new ModelAndView("stock","command",new ProductModel());
		productDao.delete(id);
		mv.getModelMap().addAttribute("stock", productDao.findAll());
		return mv;
}
	@RequestMapping(value="/updateproduct", method=RequestMethod.GET)
	public ModelAndView viewUpdate(Model model,@RequestParam("id") int pid){
		ModelAndView mv=new ModelAndView("update");
		ProductModel product=productDao.findById(pid);
		mv.getModelMap().addAttribute("product", product);
		mv.getModelMap().addAttribute("categories", categoryDao.findAll());
		mv.getModelMap().addAttribute("supplier", supplierDao.findAll());
		return mv;
}
	@RequestMapping(value="/updateproduct", method=RequestMethod.POST)
	// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
	public ModelAndView updateProduct(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("redirect:stock");
		CategoryModel category=categoryDao.findById(Integer.parseInt(request.getParameter("cid")));
		SupplierModel supplier=supplierDao.findById(Integer.parseInt(request.getParameter("sid")));
		ProductModel product =new ProductModel();
		product.setPname(request.getParameter("pname"));
		product.setPstock(Integer.parseInt(request.getParameter("pstock")));
		product.setPdescription(request.getParameter("pdescription"));
		product.setPprice(Float.parseFloat(request.getParameter("pprice"))) ;
		product.setPimg(request.getParameter("pimg"));
		product.setCat(category);
		product.setSid(supplier);
		productDao.update(product);
		mv.getModelMap().addAttribute("stock", productDao.findAll());
		return mv;
		
	 }
	
}
	
	

