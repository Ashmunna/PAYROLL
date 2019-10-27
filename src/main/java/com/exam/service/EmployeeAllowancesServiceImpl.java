package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.EmployeeAllowancesDao;
import com.exam.model.EmployeeAllowances;

@Service
@Transactional
public class EmployeeAllowancesServiceImpl implements EmployeeAllowancesService {
	@Autowired
	EmployeeAllowancesDao employeeAllowancesDao;

	
	


	@Override
	public EmployeeAllowances save(EmployeeAllowances employeeallowances) {
		return employeeAllowancesDao.save(employeeallowances);
	}



	@Override
	public boolean delete(long id) {
		return employeeAllowancesDao.delete(id);
	}

	@Override
	public EmployeeAllowances getById(long id) {
		return employeeAllowancesDao.getById(id);
	}

	@Override
	public List<EmployeeAllowances> getAll() {
		return employeeAllowancesDao.getAll();
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
