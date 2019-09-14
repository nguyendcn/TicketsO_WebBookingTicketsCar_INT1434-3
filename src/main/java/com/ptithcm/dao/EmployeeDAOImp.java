package com.ptithcm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.entities.Employee;

@Repository()
@Transactional
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class EmployeeDAOImp implements DAOBase<Employee>{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Employee> findAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("FROM Employee", Employee.class).getResultList();
	}

	@Override
	public Employee findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Employee entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Employee entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Employee entity) {
		// TODO Auto-generated method stub
		
	}

}
