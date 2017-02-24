package com.niit.ShyBackend.DAOImpl;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShyBackend.dao.UserOrderDAO;
import com.niit.ShyBackend.model.UserOrder;

@Repository("userOrderDAO")
@Transactional
@EnableTransactionManagement
public class UserOrderDAOImpl implements UserOrderDAO{

	@Autowired
	SessionFactory sessionFactory;
	public void addOrder(UserOrder order) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(order);
	}
	public UserOrder getUserOrderById(int orderId) {
		Session session=sessionFactory.getCurrentSession();
		UserOrder userOrder=(UserOrder)session.createQuery("from UserOrder where orderId="+orderId).getSingleResult();
		return userOrder;
	}

}

