package com.ptithcm.service;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.CoachBrand;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CoachBrandServiceImp implements ServicesBase<CoachBrand>{

	@Override
	public List<CoachBrand> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CoachBrand findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(CoachBrand entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(CoachBrand entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(CoachBrand entity) {
		// TODO Auto-generated method stub
		
	}

}
