package com.ptithcm.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Customer;
@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CustomerDAOImp implements DAOBase<Customer>{
	
	@Autowired
	SessionFactory sessionFactory;

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
	
	public Customer findByNumberPhone(String numberPhone) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			return session.createQuery("from Customer c where c.numberPhone ='" + numberPhone + "'", Customer.class).getSingleResult();
		}catch(Exception ex) {
			return null;
		}
	}
	
	public void addNew(Customer cus) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			
			session.save(cus);
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
	}

}
