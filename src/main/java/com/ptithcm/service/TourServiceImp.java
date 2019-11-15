package com.ptithcm.service;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.dao.TourDAOImp;
import com.ptithcm.entities.Chair;
import com.ptithcm.entities.Tour;
import com.ptithcm.models.RouteModel;
import com.ptithcm.models.TourInfor;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class TourServiceImp implements ServicesBase<Tour>{

	@Autowired
	TourDAOImp tourDAOImp;
	
	@Override
	public List<Tour> findAll() {
		return tourDAOImp.findAll();
	}

	@Override
	public Tour findById(int id) {
		return tourDAOImp.findById(id);
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
	
	public List<Tour> getTourByOrder(String start, String end, Date date){
		return tourDAOImp.getTourByOrder(start, end, date);
	}
	
	public TourInfor getInfoTour(int id) {
		return tourDAOImp.getInfoTour(id);
	}

	public RouteModel getRouteInfoById(int id) {
		return tourDAOImp.getRouteInfoById(id);
	}
	
}
