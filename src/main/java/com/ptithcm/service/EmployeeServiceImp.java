package com.ptithcm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.dao.EmployeeDAOImp;
import com.ptithcm.entities.Employee;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class EmployeeServiceImp implements ServicesBase<Employee>{

	@Autowired
	private EmployeeDAOImp employeeDAOImp;
	
	@Override
	public List<Employee> findAll() {
		return this.employeeDAOImp.findAll();
	}

	@Override
	public Employee findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Employee entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Employee entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Employee entity) {
		// TODO Auto-generated method stub
		
	}

}
