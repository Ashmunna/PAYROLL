package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.exam.model.EmployeeAllowances;
@Repository
public class EmployeeAllowancesDaoImpl implements EmployeeAllowancesDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public EmployeeAllowances save(EmployeeAllowances employeeallowances) {
		try {
			sessionFactory.getCurrentSession().save(employeeallowances);
			return (employeeallowances) ;
		} catch (HibernateException e) {
			return null;
		}

	}

	@Override
	public EmployeeAllowances update(EmployeeAllowances employeeallowances) {
		try {
			sessionFactory.getCurrentSession().update(employeeallowances);
			return (employeeallowances) ;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public boolean delete(long id) {
		try {
			EmployeeAllowances employeeallowances = sessionFactory.getCurrentSession().get(EmployeeAllowances.class, id);
			sessionFactory.getCurrentSession().delete(employeeallowances);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}

	@Override
	public EmployeeAllowances getById(long id) {
		try {
			EmployeeAllowances employeeallowances = sessionFactory.getCurrentSession().get(EmployeeAllowances.class, id);
			return employeeallowances;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public List<EmployeeAllowances> getAll() {
		
		try {
			List<EmployeeAllowances> employeeList = (List<EmployeeAllowances>) sessionFactory.getCurrentSession().createQuery("FROM EmployeeAllowances").setFetchSize(50).list();
			return employeeList;
		} catch (HibernateException e) {
			return null;
		}
	}

}
