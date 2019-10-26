package com.ptithcm.entities;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="Routes")
public class Route {
	
	@Id
	private int id;
	private String departure;
	private String destination;
	private String totalTime;
	private int distance;
	
	@OneToMany(mappedBy="route")
	private Set<RouteDetail> routeDetailes;
	
	@OneToMany(mappedBy="route")
	private Set<Tour> tours;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public Set<RouteDetail> getRouteDetailes() {
		return routeDetailes;
	}
	public void setRouteDetailes(Set<RouteDetail> routes) {
		this.routeDetailes = routes;
	}
	public String getTotalTime() {
		return totalTime;
	}
	public void setTotalTime(String totalTime) {
		this.totalTime = totalTime;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	public Set<Tour> getTours() {
		return tours;
	}
	public void setTours(Set<Tour> tours) {
		this.tours = tours;
	}
	
	
}
