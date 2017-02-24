package com.niit.ShyBackend.dao;



import com.niit.ShyBackend.model.UserOrder;

public interface UserOrderDAO {
	
	public void addOrder(UserOrder order);
	public UserOrder getUserOrderById(int orderId);

}

