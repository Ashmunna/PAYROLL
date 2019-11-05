package com.exam.dao;

import java.util.List;


import com.exam.model.EmployeeDeduction;

public interface EmployeeDeductionDao extends CommonDao<EmployeeDeduction>{
	public EmployeeDeduction save(EmployeeDeduction employeeDeduction);
	public EmployeeDeduction getById(long id);
	public List<EmployeeDeduction> getAll(); 
}
