package com.ptithcm.dao;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.CoachType;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CoachTypeDAOImp implements DAOBase<CoachType>{

	@Override
	public List<CoachType> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CoachType findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(CoachType entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(CoachType entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(CoachType entity) {
		// TODO Auto-generated method stub
		
	}

}
