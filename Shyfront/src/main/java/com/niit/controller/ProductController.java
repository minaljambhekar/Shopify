package com.niit.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.ShyBackend.dao.productDAO;
import com.niit.ShyBackend.DAOImpl.productDAOImpl;
import com.niit.ShyBackend.model.Product;

@Controller
public class ProductController {
	 @Autowired
	 productDAO productDAO=new productDAOImpl();
	
	 @RequestMapping("/productpage/All")
	 public ModelAndView products()
	 {
		List<Product> products=productDAO.getAllProducts();
	 	String productList=new Gson().toJson(products);
	 	ModelAndView model=new ModelAndView("productpage");
	 	model.addObject("productList", productList);
	 	return model;
		
	 }
	 
	 @RequestMapping("/productpage/{category}")
	 public ModelAndView productCategory(@PathVariable("category") String category)
	 {
		List<Product> products=productDAO.getAllProductsByCategory(category);
	 	String productList=new Gson().toJson(products);
	 	ModelAndView model=new ModelAndView("productpage");
	 	model.addObject("productList", productList);
	 	return model;
		
	 } 
	 
	 @RequestMapping("/ProductDetails/{productId}")
	 public ModelAndView ProductDetails(@PathVariable("productId") int pId){
   	     Product product=productDAO.getProductById(pId);
		 ModelAndView model=new ModelAndView("ProductDetails");
		 model.addObject("product", product);
		 return model;
     }
     
	 
        
}

