package com.ptithcm.service;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Itinerary;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ItineraryServiceImp implements ServicesBase<Itinerary>{

	@Override
	public List<Itinerary> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Itinerary findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Itinerary entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Itinerary entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Itinerary entity) {
		// TODO Auto-generated method stub
		
	}

}
