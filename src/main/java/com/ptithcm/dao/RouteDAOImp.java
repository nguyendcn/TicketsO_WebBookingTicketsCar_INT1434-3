package com.ptithcm.dao;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Route;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class RouteDAOImp implements DAOBase<Route>{

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

}
