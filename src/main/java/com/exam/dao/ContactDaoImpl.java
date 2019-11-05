package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.Contact;
@Repository
public class ContactDaoImpl implements ContactDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Contact save(Contact contact) {
		try {
			sessionFactory.getCurrentSession().save(contact);
			return (contact) ;
		} catch (HibernateException e) {
			return null;
		}

	}

	@Override
	public Contact update(Contact contact) {
		try {
			sessionFactory.getCurrentSession().update(contact);
			return (contact) ;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public boolean delete(long id) {
		try {
			Contact contact = sessionFactory.getCurrentSession().get(Contact.class, id);
			sessionFactory.getCurrentSession().delete(contact);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}

	@Override
	public Contact getById(long id) {
		try {
			Contact contact = sessionFactory.getCurrentSession().get(Contact.class, id);
			return contact;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public List<Contact> getAll() {
		
		try {
			List<Contact> contactList = (List<Contact>) sessionFactory.getCurrentSession().createQuery("FROM Contact").setFetchSize(50).list();
			return contactList;
		} catch (HibernateException e) {
			return null;
		}
	}

}
