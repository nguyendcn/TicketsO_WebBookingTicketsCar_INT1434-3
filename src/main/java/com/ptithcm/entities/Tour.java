package com.ptithcm.entities;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "Tours")
public class Tour {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne
	@JoinColumn(name="itinerary_id")
	private Itinerary itinerary;
	
	@ManyToOne
	@JoinColumn(name="route_id")
	private Route route;
	
	@OneToOne(optional=false)
    @JoinColumn(
    	name="bus_id", unique=true, nullable=false, updatable=false)
	private Bus bus;

	@OneToMany(mappedBy="tour")
	private Set<Ticket> tickets;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Itinerary getItinerary() {
		return itinerary;
	}

	public void setItinerary(Itinerary itinerary) {
		this.itinerary = itinerary;
	}

	public Route getRoute() {
		return route;
	}

	public void setRoute(Route route) {
		this.route = route;
	}

	public Bus getBus() {
		return bus;
	}

	public void setBus(Bus coach) {
		this.bus = coach;
	}

	public Set<Ticket> getTickets() {
		return tickets;
	}

	public void setTickets(Set<Ticket> tickets) {
		this.tickets = tickets;
	}
	
}
