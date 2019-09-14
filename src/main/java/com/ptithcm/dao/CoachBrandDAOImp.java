package com.ptithcm.dao;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.CoachBrand;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CoachBrandDAOImp implements DAOBase<CoachBrand>{

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
