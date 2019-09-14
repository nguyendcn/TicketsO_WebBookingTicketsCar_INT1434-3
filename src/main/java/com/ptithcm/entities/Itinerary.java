package com.ptithcm.entities;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "Itinerary")
public class Itinerary {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int distance;
	private int time;
	
	@OneToMany(mappedBy="itinerary")
	private Set<ItineraryDetail> itineraryDetails;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDistance() {
		return distance;
	}

	public void setDistance(int distance) {
		this.distance = distance;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public Set<ItineraryDetail> getItineraryDetails() {
		return itineraryDetails;
	}

	public void setItineraryDetails(Set<ItineraryDetail> itineraryDetails) {
		this.itineraryDetails = itineraryDetails;
	}
	
}
