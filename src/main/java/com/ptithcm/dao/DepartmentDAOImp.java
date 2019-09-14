package com.ptithcm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Department;

@Repository()
@Transactional()
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class DepartmentDAOImp implements DAOBase<Department>{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Department> findAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("FROM Department", Department.class).getResultList();
	}

	@Override
	public Department findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Department entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Department entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Department entity) {
		// TODO Auto-generated method stub
		
	}

}
