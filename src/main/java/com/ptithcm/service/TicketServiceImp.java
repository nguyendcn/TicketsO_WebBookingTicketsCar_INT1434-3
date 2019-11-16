package com.ptithcm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.dao.TicketDAOImp;
import com.ptithcm.entities.Ticket;

@Transactional
@Service
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class TicketServiceImp implements ServicesBase<Ticket>{

	@Autowired
	TicketDAOImp tdi;
	
	@Override
	public List<Ticket> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Ticket findById(int id) {
		return tdi.findById(id);
	}

	@Override
	public void save(Ticket entity) {
		tdi.save(entity);
	}

	@Override
	public void update(Ticket entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Ticket entity) {
		// TODO Auto-generated method stub
		
	}
	
	public List<Ticket> getTicketByIdCustomer(int id){
		return tdi.getTicketByIdCustomer(id);
	}

}
