package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.ContactDao;
import com.exam.model.Contact;

@Service
@Transactional
public class ContactServiceImpl implements ContactService {
	
	
	@Autowired
	ContactDao contactDao;



	@Override
	public Contact save(Contact contact) {
		return contactDao.save(contact);
	}



	@Override
	public boolean delete(long id) {
		return contactDao.delete(id);
	}

	@Override
	public Contact getById(long id) {
		return contactDao.getById(id);
	}

	@Override
	public List<Contact> getAll() {
		return contactDao.getAll();
	}

	@Override
	public Object save(Object entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Contact update(Contact contact) {
		
		return contactDao.update(contact);
	}



	@Override
	public Object update(Object entity) {
		// TODO Auto-generated method stub
		return null;
	}

}
