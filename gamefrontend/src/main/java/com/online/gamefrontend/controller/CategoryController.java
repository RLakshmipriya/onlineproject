package com.online.gamefrontend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.online.gamebackend.dao.CategoryDao;
import com.online.gamebackend.model.CategoryModel;

@Controller
public class CategoryController {
	@Autowired
	private CategoryDao categoryDao;
	@RequestMapping(value="admin/addcategory", method=RequestMethod.GET)
	public ModelAndView viewAddCategory(){
		ModelAndView mv=new ModelAndView("add","command",new CategoryModel());
		//ModelAndView mv1=new ModelAndView("add","command",new Category());
		return mv;
		
}
	@RequestMapping(value="admin/addcategory", method=RequestMethod.POST)
	 public ModelAndView addCategory(@ModelAttribute("category") CategoryModel category){
		categoryDao.save(category);
		ModelAndView mv=new ModelAndView("redirect:stock");
		return mv;
	 }
	@RequestMapping(value="admin/updatecategory", method=RequestMethod.GET)
	public ModelAndView viewUpdateCategory(Model model,@RequestParam("id") int cid){
		ModelAndView mv=new ModelAndView("update");
		CategoryModel category=categoryDao.findById(cid);
		mv.getModelMap().addAttribute("category", category);
		return mv;
}
	
	@RequestMapping(value="admin/updatecategory", method=RequestMethod.POST)
	// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
	public ModelAndView updateCategory(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("redirect:stock");
		CategoryModel category=new CategoryModel();
		category.setCid(Integer.parseInt(request.getParameter("cid")));
		category.setCname(request.getParameter("cname"));
		category.setCdescription(request.getParameter("cdescription"));
		categoryDao.update(category);
		mv.getModelMap().addAttribute("stock", categoryDao.findAll());
		return mv;
		
	 }
	@RequestMapping(value="admin/deletecategory", method=RequestMethod.GET)
	public ModelAndView viewCategoryDelete(@RequestParam("id") int cid){
		ModelAndView mv=new ModelAndView("redirect:stock","command",new CategoryModel());
		categoryDao.delete(cid);
		mv.getModelMap().addAttribute("stock", categoryDao.findAll());
		return mv;
}
	/*@RequestMapping(value="admin/addcategory", method=RequestMethod.GET)
	public ModelAndView viewAddCategory(){
		ModelAndView mv=new ModelAndView("add","command",new CategoryModel());
		//ModelAndView mv1=new ModelAndView("add","command",new Category());
		return mv;
		
}
	@RequestMapping(value="admin/addcategory", method=RequestMethod.POST)
	 public ModelAndView addCategory(@ModelAttribute("category") CategoryModel category){
		categoryDao.save(category);
		ModelAndView mv=new ModelAndView("redirect:stock");
		return mv;
	 }
	@RequestMapping(value="admin/updatecategory", method=RequestMethod.GET)
	public ModelAndView viewUpdateCategory(Model model,@RequestParam("id") int cid){
		ModelAndView mv=new ModelAndView("update");
		CategoryModel category=categoryDao.findById(cid);
		mv.getModelMap().addAttribute("category", category);
		return mv;
}
	
	@RequestMapping(value="admin/updatecategory", method=RequestMethod.POST)
	// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
	public ModelAndView updateCategory(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("redirect:stock");
		CategoryModel category=new CategoryModel();
		category.setCid(Integer.parseInt(request.getParameter("cid")));
		category.setCname(request.getParameter("cname"));
		category.setCdescription(request.getParameter("cdescription"));
		categoryDao.update(category);
		mv.getModelMap().addAttribute("stock", categoryDao.findAll());
		return mv;
		
	 }
	@RequestMapping(value="admin/deletecategory", method=RequestMethod.GET)
	public ModelAndView viewDelete(@RequestParam("id") int cid){
		ModelAndView mv=new ModelAndView("redirect:stock","command",new CategoryModel());
		categoryDao.delete(cid);
		mv.getModelMap().addAttribute("stock", categoryDao.findAll());
		return mv;
}*/
}