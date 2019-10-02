package com.ptithcm.dao;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.BusBrand;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CoachBrandDAOImp implements DAOBase<BusBrand>{

	@Override
	public List<BusBrand> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BusBrand findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(BusBrand entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(BusBrand entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(BusBrand entity) {
		// TODO Auto-generated method stub
		
	}

}
