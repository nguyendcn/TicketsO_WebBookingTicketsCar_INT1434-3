package com.ptithcm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.dao.ChairDAOImp;
import com.ptithcm.entities.Chair;

@Transactional(noRollbackFor = Exception.class)
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ChairServiceImp implements ServicesBase<Chair>{

	@Autowired
	ChairDAOImp cdi;
	
	@Override
	public List<Chair> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Chair findById(int id) {
		return cdi.findById(id);
	}

	@Override
	public void save(Chair entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Chair entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Chair entity) {
		// TODO Auto-generated method stub
		
	}
	
	public List<Chair> getListChairById(int id){
		return cdi.getListChairById(id);
	}
	
	public void updateBookingChairs(int id_tour, List<String> lChairs) {
		cdi.updateBookingChairs(id_tour, lChairs);
	}

	public List<Chair> getListChairByOrder(List<String> lChairs, int id_tour){
		return cdi.getListChairByOrder(lChairs, id_tour);
	}
}
