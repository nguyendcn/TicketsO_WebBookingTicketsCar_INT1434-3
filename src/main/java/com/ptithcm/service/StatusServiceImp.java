package com.ptithcm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.dao.StatusDAOImp;
import com.ptithcm.entities.Status;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class StatusServiceImp implements ServicesBase<Status>{
	@Autowired
	StatusDAOImp statusDAOImp;

	@Override
	public List<Status> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Status findById(int id) {
		return statusDAOImp.findById(id);
	}

	@Override
	public void save(Status entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Status entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Status entity) {
		// TODO Auto-generated method stub
		
	}

}
