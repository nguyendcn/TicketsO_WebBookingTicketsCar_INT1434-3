package com.ptithcm.dao;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Customer;
@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CustomerDAOImp implements DAOBase<Customer>{

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
