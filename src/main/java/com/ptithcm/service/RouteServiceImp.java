package com.ptithcm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.dao.RouteDAOImp;
import com.ptithcm.entities.Route;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class RouteServiceImp implements ServicesBase<Route>{

	@Autowired
	RouteDAOImp rdi;
	
	@Override
	public List<Route> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Route findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Route entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Route entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Route entity) {
		// TODO Auto-generated method stub
		
	}

	public int getIdByPlace(String dep, String des) {
		return rdi.getIdByPlace(dep, des);
	}
}
