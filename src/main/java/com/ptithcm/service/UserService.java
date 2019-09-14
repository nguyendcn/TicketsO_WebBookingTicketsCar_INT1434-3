package com.ptithcm.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ptithcm.dao.UserDAOImp;
import com.ptithcm.entities.User;

@Service
@Transactional
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class UserService {
  @Autowired
  private UserDAOImp userDAO;
  
  public List<User> findAll() {
    return userDAO.findAll();
  }
  public User findById(int id) {
    return userDAO.findById(id);
  }
  
  public void save(User customer){
    // validate business
    userDAO.save(customer);
  }
  public void update(User customer){
    // validate business
    userDAO.update(customer);
  }
  
  public void delete(int id){
    // validate business
    //customerDAO.delete(id);
  }
  
  public boolean checkLogin(String username, String passwork) {
	  return userDAO.checkLogin(username, passwork);
  }
}