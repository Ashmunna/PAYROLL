package com.exam.dao;

import java.util.List;


import com.exam.model.EmployeeAllowances;

public interface EmployeeAllowancesDao extends CommonDao<EmployeeAllowances>{
	public EmployeeAllowances save(EmployeeAllowances employeeallowances);
	public EmployeeAllowances getById(long id);
	public List<EmployeeAllowances> getAll(); 
}
