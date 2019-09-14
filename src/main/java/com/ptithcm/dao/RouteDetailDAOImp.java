package com.ptithcm.dao;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.RouteDetail;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class RouteDetailDAOImp implements DAOBase<RouteDetail>{

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
