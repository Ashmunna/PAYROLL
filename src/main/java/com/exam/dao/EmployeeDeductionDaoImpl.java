package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.exam.model.EmployeeDeduction;
@Repository
public class EmployeeDeductionDaoImpl implements EmployeeDeductionDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public EmployeeDeduction save(EmployeeDeduction employeeDeduction) {
		try {
			sessionFactory.getCurrentSession().save(employeeDeduction);
			return (employeeDeduction) ;
		} catch (HibernateException e) {
			return null;
		}

	}

	@Override
	public EmployeeDeduction update(EmployeeDeduction employeeDeduction) {
		try {
			sessionFactory.getCurrentSession().update(employeeDeduction);
			return (employeeDeduction) ;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public boolean delete(long id) {
		try {
			EmployeeDeduction employeeDeduction = sessionFactory.getCurrentSession().get(EmployeeDeduction.class, id);
			sessionFactory.getCurrentSession().delete(employeeDeduction);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}

	@Override
	public EmployeeDeduction getById(long id) {
		try {
			EmployeeDeduction employeeDeduction = sessionFactory.getCurrentSession().get(EmployeeDeduction.class, id);
			return employeeDeduction;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public List<EmployeeDeduction> getAll() {
		
		try {
			List<EmployeeDeduction> deductionList = (List<EmployeeDeduction>) sessionFactory.getCurrentSession().createQuery("FROM EmployeeDeduction").setFetchSize(50).list();
			return deductionList;
		} catch (HibernateException e) {
			return null;
		}
	}

}
