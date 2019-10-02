package com.ptithcm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Status;
import com.ptithcm.entities.User;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class StatusDAOImp implements DAOBase<Status>{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Status> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Status findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		return session.get(Status.class, id);
	}

	@Override
	public void save(Status entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Status entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Status entity) {
		// TODO Auto-generated method stub
		
	}

}
