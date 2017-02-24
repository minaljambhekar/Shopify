package com.niit.ShyBackend.dao;



import java.util.List;

import com.niit.ShyBackend.model.Cart;
import com.niit.ShyBackend.model.Item;

public interface ItemDAO {
	public void addItem(Item item);
	public void removeItem(Item item);
	public void removeAllItems(Cart cart);
	public Item getItemByItemId(int itemId);
    public List<Item> getAllItemsByCart(int cartId);
}

