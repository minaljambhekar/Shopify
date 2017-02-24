package com.niit.ShyBackend.dao;

import java.util.List;

import com.niit.ShyBackend.model.Person;


public interface PersonDAO {
	
	public void addPerson(Person p);
	public void updatePerson(Person p);
	public List<Person> listPersons();
	public Person getPersonById(int id);
	public Person getPersonByName(String name);
	public void removePerson(int id);

}

