package com.ptithcm.entities;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "CoachBrands")
public class CoachBrand {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String madeBy;
	
	@OneToMany(mappedBy="coachBrand")
	private Set<Coach> coaches;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMadeBy() {
		return madeBy;
	}
	public void setMadeBy(String madeBy) {
		this.madeBy = madeBy;
	}
	public Set<Coach> getCoaches() {
		return coaches;
	}
	public void setCoaches(Set<Coach> coaches) {
		this.coaches = coaches;
	}
	
}
