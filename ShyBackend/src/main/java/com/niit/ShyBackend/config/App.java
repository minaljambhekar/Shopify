package com.niit.ShyBackend.config;



import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.niit.ShyBackend.config.AppContext;
import com.niit.ShyBackend.dao.PersonDAO;
import com.niit.ShyBackend.dao.productDAO;
import com.niit.ShyBackend.model.Person;
import com.niit.ShyBackend.model.Product;


public class App 
{
    public static void main( String[] args )
    {
       AbstractApplicationContext context=new AnnotationConfigApplicationContext(AppContext.class);
       
      /* Person p=new Person();
       p.setName("Minal Jambhekar");
       p.setEmail("minal24jambhekar@gmail.com");
       p.setNumber("9011231446");
       p.setPassword("pass@1234");
       PersonDAO.addPerson(p);*/
    }
}
