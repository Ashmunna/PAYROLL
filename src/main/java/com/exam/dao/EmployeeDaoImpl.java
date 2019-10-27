package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.Employee;
@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Employee save(Employee employee) {
		try {
			sessionFactory.getCurrentSession().save(employee);
			return (employee) ;
		} catch (HibernateException e) {
			return null;
		}

	}

	@Override
	public Employee update(Employee employee) {
		try {
			sessionFactory.getCurrentSession().update(employee);
			return (employee) ;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public boolean delete(long id) {
		try {
			Employee employee = sessionFactory.getCurrentSession().get(Employee.class, id);
			sessionFactory.getCurrentSession().delete(employee);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}

	@Override
	public Employee getById(long id) {
		try {
			Employee employee = sessionFactory.getCurrentSession().get(Employee.class, id);
			return employee;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public List<Employee> getAll() {
		
		try {
			List<Employee> employeeList = (List<Employee>) sessionFactory.getCurrentSession().createQuery("FROM Employee").setFetchSize(50).list();
			return employeeList;
		} catch (HibernateException e) {
			return null;
		}
	}

}
