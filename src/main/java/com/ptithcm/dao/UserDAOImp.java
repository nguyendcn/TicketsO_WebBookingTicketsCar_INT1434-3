package com.ptithcm.dao;

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
@Transactional(rollbackFor = Exception.class)
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
    return session.createQuery("FROM Customer", User.class).getResultList();
  }
  
  public boolean checkLogin(String username, String passwork) {
	  Session session = this.sessionFactory.getCurrentSession();
	  return session.createQuery("FROM User WHERE " + username + "=User.name AND" + passwork + "=User.passwork", User.class) == null ? false: true;
  }
}