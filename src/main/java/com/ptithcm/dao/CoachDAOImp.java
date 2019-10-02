package com.ptithcm.dao;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Bus;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CoachDAOImp implements DAOBase<Bus> {

	@Override
	public List<Bus> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Bus findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Bus entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Bus entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Bus entity) {
		// TODO Auto-generated method stub
		
	}

}
