package com.ptithcm.service;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.TransBusinessBranch;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class TransBusinessBranchServiceImp implements ServicesBase<TransBusinessBranch>{

	@Override
	public List<TransBusinessBranch> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TransBusinessBranch findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(TransBusinessBranch entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(TransBusinessBranch entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(TransBusinessBranch entity) {
		// TODO Auto-generated method stub
		
	}

}
