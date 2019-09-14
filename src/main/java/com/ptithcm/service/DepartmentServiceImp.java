package com.ptithcm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.dao.DepartmentDAOImp;
import com.ptithcm.entities.Department;

@Service
@Transactional
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class DepartmentServiceImp implements ServicesBase<Department>{

	@Autowired
	private DepartmentDAOImp deparmentDAOImp;  
	
	
	@Override
	public List<Department> findAll() {
		return deparmentDAOImp.findAll();
	}

	@Override
	public Department findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Department entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Department entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Department entity) {
		// TODO Auto-generated method stub
		
	}

}
