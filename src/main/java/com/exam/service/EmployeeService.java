package com.exam.service;

import java.util.List;

import com.exam.model.Employee;

public interface EmployeeService<T> extends CommonService<Employee> {
	
	public Employee save(Employee entity);
	public Employee getById(long id);
	public List<Employee> getAll(); 
}
