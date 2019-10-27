package com.exam.service;

import java.util.List;


import com.exam.model.EmployeeAllowances;

public interface EmployeeAllowancesService<T> extends CommonService<EmployeeAllowances> {
	
	public EmployeeAllowances save(EmployeeAllowances employeeallowances);
	public EmployeeAllowances getById(long id);
	public List<EmployeeAllowances> getAll(); 
}
