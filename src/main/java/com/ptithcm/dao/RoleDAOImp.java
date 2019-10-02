package com.ptithcm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Role;
import com.ptithcm.entities.User;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class RoleDAOImp implements DAOBase<Role> {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Role> findAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("FROM Role", Role.class).getResultList();
	}

	@Override
	public Role findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		return session.get(Role.class, id);
	}

	@Override
	public void save(Role entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Role entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Role entity) {
		// TODO Auto-generated method stub
		
	}

}
