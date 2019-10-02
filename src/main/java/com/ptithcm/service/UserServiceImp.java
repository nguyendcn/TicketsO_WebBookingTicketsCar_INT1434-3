package com.ptithcm.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.dao.UserDAOImp;
import com.ptithcm.entities.User;

@Service
@Transactional
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class UserServiceImp implements ServicesBase<User> {

	@Autowired
	private UserDAOImp userDAO;

	public List<User> findAll() {
		return userDAO.findAll();
	}

	public User findById(int id) {
		return userDAO.findById(id);
	}

	public void save(User customer) {
		// validate business
		userDAO.save(customer);
	}

	public void update(User customer) {
		// validate business
		userDAO.update(customer);
	}

	public void delete(int id) {
		// validate business
		// customerDAO.delete(id);
	}

	public void delete(User entity) {
		// TODO Auto-generated method stub

	}
	
	public int add(User user) {
		return userDAO.add(user);
	}
	
	public int deleteUserById(int id) {
		return userDAO.deleteUserById(id);
	}
	
	public boolean checkLogin(String username, String passwork) {
		return userDAO.checkLogin(username, passwork);
	}
	
	public List<User> findByPage(int page, int numPerPage){
		return userDAO.findByPage(page, numPerPage);
	}
	
	public int getQuantityUser() {
		return userDAO.getQuantityUser();
	}
}