package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.EmployeeDao;
import com.exam.model.Employee;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	EmployeeDao employeeDao;

	
	


	@Override
	public Employee save(Employee employee) {
		return employeeDao.save(employee);
	}



	@Override
	public boolean delete(long id) {
		return employeeDao.delete(id);
	}

	@Override
	public Employee getById(long id) {
		return employeeDao.getById(id);
	}

	@Override
	public List<Employee> getAll() {
		return employeeDao.getAll();
	}

	@Override
	public Object save(Object entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object update(Object entity) {
		// TODO Auto-generated method stub
		return null;
	}

}
