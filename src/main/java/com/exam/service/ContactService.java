package com.exam.service;

import java.util.List;

import com.exam.model.Contact;

public interface ContactService<T> extends CommonService<Contact> {
	
	public Contact save(Contact contact);
	public Contact update(Contact contact);
	public Contact getById(long id);
	public List<Contact> getAll(); 
}
