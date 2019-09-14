package com.ptithcm.service;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.TransportationBusiness;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class TransporationBusinessServiceImp implements ServicesBase<TransportationBusiness>{

	@Override
	public List<TransportationBusiness> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TransportationBusiness findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(TransportationBusiness entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(TransportationBusiness entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(TransportationBusiness entity) {
		// TODO Auto-generated method stub
		
	}

}
