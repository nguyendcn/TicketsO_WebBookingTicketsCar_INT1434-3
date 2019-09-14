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
    	name="coach_id", unique=true, nullable=false, updatable=false)
	private Coach coach;

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

	public Coach getCoach() {
		return coach;
	}

	public void setCoach(Coach coach) {
		this.coach = coach;
	}

	public Set<Ticket> getTickets() {
		return tickets;
	}

	public void setTickets(Set<Ticket> tickets) {
		this.tickets = tickets;
	}
	
}
