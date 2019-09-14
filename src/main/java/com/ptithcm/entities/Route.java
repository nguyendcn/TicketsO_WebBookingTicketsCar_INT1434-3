package com.ptithcm.entities;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="Routes")
public class Route {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String departure;
	private String destination;
	
	@OneToMany(mappedBy="route")
	private Set<RouteDetail> routeDetailes;
	
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
	
	
}
