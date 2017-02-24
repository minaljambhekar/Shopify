package com.niit.controller;



import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShyBackend.dao.PersonDAO;
import com.niit.ShyBackend.dao.productDAO;
import com.niit.ShyBackend.model.Person;
import com.niit.ShyBackend.model.Product;

@Controller
public class PersonController {
	@Autowired
	PersonDAO personDAO;
    @Autowired
	productDAO pDAO;	
    
    @RequestMapping("/AdminPage")
    public ModelAndView AdminPage()
	{
		List<Person> listPersons=personDAO.listPersons();
		ModelAndView model=new ModelAndView("AdminPage");
		model.addObject("person",new Person());
		model.addObject("listPersons", listPersons);
		
		List<Product> listProducts=pDAO.getAllProducts();
		model.addObject("product",new Product());
		model.addObject("listProducts", listProducts);
		
		return model;
	}
    
     @RequestMapping("/Register")
	 public String register(@Validated @ModelAttribute("person") Person person,BindingResult result,HttpServletRequest request)
    {
        if(result.hasErrors()){
        	return "Register";
        }  	 
        else{
        	personDAO.addPerson(person);
			return "redirect:/Login";
    	
        }
        
    }
    
         
	@RequestMapping(value= "/person/add", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("person") Person person,HttpServletRequest request)
	{
					
		
			if (person.getId() == 0) {
				personDAO.addPerson(person);
			} else {
				personDAO.updatePerson(person);
			}

			return "redirect:/AdminPage";
		
	}
	
	
	@RequestMapping("/remove/{id}")
	public String removePerson(@PathVariable("id") int id)
	{
		personDAO.removePerson(id);
		return "redirect:/AdminPage";
	}
	
	@RequestMapping("/edit/{id}")
	public String editPerson(@PathVariable("id") int id, Model model)
	{
		List<Product> listProducts=pDAO.getAllProducts();
		model.addAttribute("product",new Product());
		model.addAttribute("listProducts", listProducts);
		
		model.addAttribute("person", personDAO.getPersonById(id));
        model.addAttribute("listPersons", personDAO.listPersons());
        return "AdminPage";
	}
	
	@RequestMapping(value= "/product/add", method = RequestMethod.POST)
	public String addPerson(@Validated @ModelAttribute("product") Product product,BindingResult result,HttpServletRequest request)
	{
		
		String filename = null;
		byte[] bytes;
		
		if (!product.getImage().isEmpty()) {

			try {
				
				bytes = product.getImage().getBytes();
				pDAO.addProduct(product);
				System.out.println("Data Inserted");
				String path = request.getSession().getServletContext().getRealPath("/resources/"+product.getProductId()+".jpg");
				System.out.println("Path = " + path);
				System.out.println("File name = " + product.getImage().getOriginalFilename());
				File f = new File(path);
				BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
				System.out.println("Image uploaded");
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		
		if(result.hasErrors())
		{
			return "AdminPage";
		}
		else{
			if (product.getProductId() == 0) {
				pDAO.addProduct(product);
			} else {
				pDAO.updateProduct(product);
			}

			return "redirect:/AdminPage";
		}
	}
	
	@RequestMapping("/removeProduct/{productId}")
	public String removeProduct(@PathVariable("productId") int Pid)
	{
		pDAO.deleteProduct(Pid);
		return "redirect:/AdminPage";
	}
	
	@RequestMapping("/editProduct/{productId}")
	public String editProduct(@PathVariable("productId") int Pid, Model model)
	{
		List<Person> listPersons=personDAO.listPersons();
		model.addAttribute("person",new Person());
		model.addAttribute("listPersons", listPersons);
		
		model.addAttribute("product", pDAO.getProductById(Pid));
        model.addAttribute("listProducts", pDAO.getAllProducts());
        return "AdminPage";
	}
}

