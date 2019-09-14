package com.ptithcm.service;

import java.util.List;

public interface ServicesBase<G> {

	public List<G> findAll();
	public G findById(int id);
	public void save(G entity);
	public void update(G entity);
	public void delete(G entity);
}
