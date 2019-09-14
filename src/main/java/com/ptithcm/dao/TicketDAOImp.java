package com.ptithcm.dao;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Ticket;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class TicketDAOImp implements DAOBase<Ticket>{

	@Override
	public List<Ticket> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Ticket findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Ticket entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Ticket entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Ticket entity) {
		// TODO Auto-generated method stub
		
	}

}
