package com.ptithcm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.dao.RoleDAOImp;
import com.ptithcm.entities.Role;

@Service
@Transactional
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class RoleServiceImp implements ServicesBase<Role>{

	@Autowired
	RoleDAOImp roleDaoImp;
	@Override
	public List<Role> findAll() {
		return roleDaoImp.findAll();
	}

	@Override
	public Role findById(int id) {
		return roleDaoImp.findById(id);
	}

	@Override
	public void save(Role entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Role entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Role entity) {
		// TODO Auto-generated method stub
		
	}

}
