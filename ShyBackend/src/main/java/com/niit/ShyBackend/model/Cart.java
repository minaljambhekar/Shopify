package com.niit.ShyBackend.model;



import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
public class Cart implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cartId;
	@OneToMany(fetch=FetchType.EAGER,mappedBy="cart",cascade=CascadeType.ALL)
	//@JoinColumn(name="itemId")
	@JsonManagedReference
	private List<Item> items;
	@OneToOne
	@JoinColumn(name="id")
	private Person person;
	
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public List<Item> getItems() {
		return items;
	}
	public void setItems(List<Item> items) {
		this.items = items;
	}
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	
	@Override
	   public String toString()
	   {
	      return "Cart [cartId=" + cartId+ ", items=" +items+ ", person=" +person+"]";
	   }

}
