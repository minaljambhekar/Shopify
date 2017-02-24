package com.niit.ShyBackend.DAOImpl;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.ShyBackend.dao.productDAO;
import com.niit.ShyBackend.model.Product;



@Repository("productDAO")
@Transactional
@EnableTransactionManagement
public class productDAOImpl implements productDAO{
	@Autowired
	SessionFactory sessionFactory;
	
	public List<Product> getAllProducts() {
		Session session=sessionFactory.getCurrentSession();
		List<Product> products=session.createQuery("from Product").getResultList();
		return products;
	}

	public Product getProductById(int id) {
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.createQuery("from Product where id="+id).getSingleResult();
		return product;
	}

	public void addProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.persist(product);
	}

	public void updateProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.update(product);
		
	}

	public void deleteProduct(int productId) {
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.createQuery("from Product where productId="+productId).getSingleResult();
		session.delete(product);
		
	}

	public List<Product> getAllProductsByCategory(String Category) {
		Session session=sessionFactory.getCurrentSession();
		List<Product> products=session.createQuery("from Product where category='"+Category+"'").getResultList();
		return products;
		
	}

}

