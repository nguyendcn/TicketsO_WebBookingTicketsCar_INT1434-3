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

import com.ptithcm.entities.User;

@Repository()
@Transactional
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class UserDAOImp implements DAOBase<User>{
  @Autowired
  private SessionFactory sessionFactory;
  public void save(final User user) {
    Session session = this.sessionFactory.getCurrentSession();
    session.save(user);
  }
  public void update(final User user) {
    Session session = this.sessionFactory.getCurrentSession();
    session.update(user);
  }
  public User findById(final int id) {
    Session session = this.sessionFactory.getCurrentSession();
    return session.get(User.class, id);
  }
  public void delete(final User user) {
    Session session = this.sessionFactory.getCurrentSession();
    session.remove(user);
  }
  public List<User> findAll() {
    Session session = this.sessionFactory.getCurrentSession();
    return session.createQuery("FROM User", User.class).getResultList();
  }
  
public List<User> findByPage(int page, int numPerPage){
	  Session session = this.sessionFactory.getCurrentSession();
	  List<User> listResult = new ArrayList<User>();
	  try {
		  int startPoint = (page - 1) * numPerPage;
		  List<User> listUser = session.createQuery("FROM User", User.class).getResultList(); 
		  if(listUser==null)
			  return null;
		  
		  for(int i = 0 ; i < listUser.size(); i++) {
			  if(i >= startPoint && i < startPoint + numPerPage) {
				  listResult.add(listUser.get(i));
			  }
		  }
		  
		  return listResult;
	  }catch(Exception ex) {
		  return null;
	  }
  }
  
  public boolean checkLogin(String username, String passwork) {
	  Session session = this.sessionFactory.getCurrentSession();
	  try {
		  User user = ((User)session.createQuery("from User as u where u.name='" + username + "' and u.password='" + passwork + "'", User.class).getSingleResult());
		  if(user==null)
			  return false;
		  return true;
	  }catch(Exception ex) {
		  return false;
	  }
	  
  }
}