package com.ptithcm.entities;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="CoachTypes")
public class CoachType {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private int numOfChair;
	private String name;
	private String description;
	
	@OneToMany(mappedBy="coachType")
	private Set<Coach> coaches;
	
	public Set<Coach> getCoaches() {
		return coaches;
	}
	public void setCoaches(Set<Coach> coaches) {
		this.coaches = coaches;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNumOfChair() {
		return numOfChair;
	}
	public void setNumOfChair(int numOfChair) {
		this.numOfChair = numOfChair;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
