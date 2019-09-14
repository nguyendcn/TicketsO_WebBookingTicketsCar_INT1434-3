package com.ptithcm.dao;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Tour;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class TourDAOImp implements DAOBase<Tour>{

	@Override
	public List<Tour> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Tour findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Tour entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Tour entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Tour entity) {
		// TODO Auto-generated method stub
		
	}

}
