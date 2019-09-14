package com.ptithcm.dao;

import java.util.List;

public interface DAOBase<T> {
	
	public List<T> findAll();
	public T findById(int id);
	public void save(T entity);
	public void update(T entity);
	public void delete(T entity);
}
