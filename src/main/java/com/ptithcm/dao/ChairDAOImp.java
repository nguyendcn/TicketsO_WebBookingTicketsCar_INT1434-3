package com.ptithcm.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Chair;

@Repository()
@Transactional(noRollbackFor = Exception.class)
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ChairDAOImp implements DAOBase<Chair> {

	@Autowired
	SessionFactory sessionFactory;

	
	public List<Chair> getListChairById(int id){
		Session session = sessionFactory.getCurrentSession();
		
		String query = "from Chair c where c.tour.id = '" + id + "'";
		
		List<Chair> lc = new ArrayList<Chair>();
		try {
			lc = session.createQuery(query, Chair.class).getResultList();
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return lc;
	}
	
	public void updateBookingChairs(int id_tour, List<String> lChairs) {
		String query = "update Chair set status_id='2' where  tour.id='" + id_tour + "' and (";
		String prop = "";
		
		for(int i = 0; i < lChairs.size(); i++) {
			prop += "name='" + lChairs.get(i) + "'";
			if((i + 1) < lChairs.size())
				prop += " or ";
		}
		
		query += prop + ")";
		
		System.out.println("\nQuery: " + query);
		
		Session session = sessionFactory.getCurrentSession();
		try {
			Query  qr = session.createQuery(query);
			qr.executeUpdate();
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	
	public List<Chair> getListChairByOrder(List<String> lChairs, int id_tour){
		String query = "from Chair where tour.id = '" + id_tour + "' and (";
		String prop = "";
		
		for(int i = 0; i < lChairs.size(); i++) {
			prop += "name='" + lChairs.get(i) + "'";
			if((i + 1) < lChairs.size())
				prop += " or ";
		}
		
		query += prop + ")";
		
		System.out.println("\nQuery: " + query);
		
		Session session = sessionFactory.getCurrentSession();
		try {
			return session.createQuery(query, Chair.class).getResultList();
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return new ArrayList<Chair>();
	}


	@Override
	public List<Chair> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Chair findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Chair entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Chair entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Chair entity) {
		// TODO Auto-generated method stub
		
	}

}
