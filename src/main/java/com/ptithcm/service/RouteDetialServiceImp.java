package com.ptithcm.service;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.RouteDetail;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class RouteDetialServiceImp implements ServicesBase<RouteDetail>{

	@Override
	public List<RouteDetail> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public RouteDetail findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(RouteDetail entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(RouteDetail entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(RouteDetail entity) {
		// TODO Auto-generated method stub
		
	}

}
