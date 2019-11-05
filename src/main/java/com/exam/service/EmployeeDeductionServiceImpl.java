package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.EmployeeDeductionDao;
import com.exam.model.EmployeeDeduction;

@Service
@Transactional
public class EmployeeDeductionServiceImpl implements EmployeeDeductionService {
	
	@Autowired
	EmployeeDeductionDao employeeDeductionDao;

	
	


	@Override
	public EmployeeDeduction save(EmployeeDeduction employeeDeduction) {
		return employeeDeductionDao.save(employeeDeduction);
	}



	@Override
	public boolean delete(long id) {
		return employeeDeductionDao.delete(id);
	}

	@Override
	public EmployeeDeduction getById(long id) {
		return employeeDeductionDao.getById(id);
	}

	@Override
	public List<EmployeeDeduction> getAll() {
		return employeeDeductionDao.getAll();
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
