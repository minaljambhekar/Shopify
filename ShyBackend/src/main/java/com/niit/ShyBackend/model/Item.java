package com.niit.ShyBackend.model;



import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
public class Item implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int itemId;
	@ManyToOne
	@JoinColumn(name="productId")
	private Product product;
	private int quantity;
	private double itemTotal;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cartId")
	@JsonBackReference
	private Cart cart;
	
	
	
	
	
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getItemTotal() {
		return itemTotal;
	}
	public void setItemTotal(double itemTotal) {
		this.itemTotal = itemTotal;
	}
	
	@Override
	   public String toString()
	   {
	      return "Item [itemId=" + itemId + ","
	      +" product="+product+", quantity=" + quantity + ", itemTotal=" + itemTotal 
	      +" cart=" +cart+ "]";
	   }

}

