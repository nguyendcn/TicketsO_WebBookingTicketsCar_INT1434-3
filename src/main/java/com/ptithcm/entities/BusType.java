package com.ptithcm.entities;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="BusTypes")
public class BusType {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private int numOfChair;
	private String name;
	private String description;
	
	@OneToMany(mappedBy="busType")
	private Set<Bus> buses;

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

	public Set<Bus> getBuses() {
		return buses;
	}

	public void setBuses(Set<Bus> buses) {
		this.buses = buses;
	}
	
	
	
}
