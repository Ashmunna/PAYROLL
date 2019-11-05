package com.exam.service;

import java.util.List;


import com.exam.model.EmployeeDeduction;

public interface EmployeeDeductionService<T> extends CommonService<EmployeeDeduction> {
	
	public EmployeeDeduction save(EmployeeDeduction employeeDeduction);
	public EmployeeDeduction getById(long id);
	public List<EmployeeDeduction> getAll(); 
}
