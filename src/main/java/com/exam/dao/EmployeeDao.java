package com.exam.dao;

import java.util.List;

import com.exam.model.Employee;

public interface EmployeeDao extends CommonDao<Employee>{
	public Employee save(Employee entity);
	public Employee getById(long id);
	public List<Employee> getAll(); 
}
