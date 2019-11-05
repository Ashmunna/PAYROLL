package com.exam.dao;

import java.util.List;

import com.exam.model.Contact;

public interface ContactDao extends CommonDao<Contact>{
	public Contact save(Contact contact);
	public Contact update(Contact contact);
	public Contact getById(long id);
	public List<Contact> getAll(); 
}
