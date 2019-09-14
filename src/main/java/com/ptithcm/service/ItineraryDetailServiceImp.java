package com.ptithcm.service;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.ItineraryDetail;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ItineraryDetailServiceImp implements ServicesBase<ItineraryDetail>{

	@Override
	public List<ItineraryDetail> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ItineraryDetail findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(ItineraryDetail entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(ItineraryDetail entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(ItineraryDetail entity) {
		// TODO Auto-generated method stub
		
	}

}
