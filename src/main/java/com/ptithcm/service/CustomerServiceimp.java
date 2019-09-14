package com.ptithcm.service;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Customer;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CustomerServiceimp implements ServicesBase<Customer>{

	@Override
	public List<Customer> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Customer entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Customer entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Customer entity) {
		// TODO Auto-generated method stub
		
	}

}
