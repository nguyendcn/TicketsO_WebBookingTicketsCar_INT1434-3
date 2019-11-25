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

import com.ptithcm.entities.Route;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class RouteDAOImp implements DAOBase<Route>{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<Route> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Route findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Route entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Route entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Route entity) {
		// TODO Auto-generated method stub
		
	}
	
	public int getIdByPlace(String dep, String des) {
		Session session = sessionFactory.getCurrentSession();
		
		String query = "select r.id\n"
				+ "from Route r\n"
				+ "where r.departure = '" + dep + "' And r.destination = '" + des + "'";
		
		
		Integer result= -1;
		try {
			result = session.createQuery(query, Integer.class).getSingleResult();
			
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return (result.intValue());
	}

}
