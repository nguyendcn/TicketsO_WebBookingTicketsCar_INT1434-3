package com.ptithcm.service;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Coach;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CoachServiceImp implements ServicesBase<Coach>{

	@Override
	public List<Coach> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Coach findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Coach entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Coach entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Coach entity) {
		// TODO Auto-generated method stub
		
	}

}
