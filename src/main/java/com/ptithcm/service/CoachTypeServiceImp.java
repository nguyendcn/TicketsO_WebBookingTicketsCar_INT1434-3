package com.ptithcm.service;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.BusType;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CoachTypeServiceImp implements ServicesBase<BusType>{

	@Override
	public List<BusType> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BusType findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(BusType entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(BusType entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(BusType entity) {
		// TODO Auto-generated method stub
		
	}

}
