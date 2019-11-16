package com.ptithcm.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Ticket;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class TicketDAOImp implements DAOBase<Ticket>{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<Ticket> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Ticket findById(int id) {
		Session session = sessionFactory.getCurrentSession();
		
		return session.find(Ticket.class, id);
	}

	@Override
	public void save(Ticket entity) {
		Session session = sessionFactory.getCurrentSession();
		
		session.save(entity);
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
		Session session = sessionFactory.getCurrentSession();
		
		String query = "from Ticket t where t.customer.id = '" + id + "'";
		
		return session.createQuery(query, Ticket.class).getResultList();
	}

}
