package com.ptithcm.service;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.TransactionHistory;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class TransactionHistoryServiceimp implements ServicesBase<TransactionHistory>{

	@Override
	public List<TransactionHistory> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TransactionHistory findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(TransactionHistory entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(TransactionHistory entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(TransactionHistory entity) {
		// TODO Auto-generated method stub
		
	}

}
