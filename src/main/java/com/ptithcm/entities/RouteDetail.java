package com.ptithcm.entities;

import javax.persistence.*;

@Entity
@Table(name = "RouteDetails")
public class RouteDetail {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne
	@JoinColumn(name="route_id")
	private Route route;
	
	@ManyToOne
	@JoinColumn(name="transportationBusiness_id")
	private TransportationBusiness transportationBusiness;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public Route getRoute() {
		return route;
	}

	public void setRoute(Route route) {
		this.route = route;
	}

	public TransportationBusiness getTransportationBusiness() {
		return transportationBusiness;
	}

	public void setTransportationBusiness(TransportationBusiness transportationBusiness) {
		this.transportationBusiness = transportationBusiness;
	}
}
