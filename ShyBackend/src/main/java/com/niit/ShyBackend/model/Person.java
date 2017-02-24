package com.niit.ShyBackend.model;



import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Person implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@NotEmpty(message="Name field can't be empty")
	private String name;
	
	private String email;
	
	@Size(min=10,max=10,message="Mobile No. has to be of 10 digits")
	private String number;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="shippingAddressId")
	public ShippingAddress shippingAddress;
	
	@Size(min=6,max=18,message="Password has to be between 6 to 18 characters")
	private String password;
	
	private String role;
	private Boolean enabled;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cartId")
	@JsonIgnore
	private Cart cart;
	
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	public Person() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	@Override
	 public String toString()
	 {
	     return "Person [id=" + id + ", name=" + name + ", email=" + email + ", number=" + number + ", address=" + shippingAddress 
	              + ", password=" + password +", role=" + role +", enabled=" + enabled+ ", cart=" +cart+ "]";
	 }

}
