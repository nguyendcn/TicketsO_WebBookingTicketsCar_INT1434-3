package com.ptithcm.entities;

import java.util.Date;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "Tours")
public class Tour {

	@Id
	private int id;
	
	@Temporal(TemporalType.DATE)
	private Date departureDate;
	
	private String time;
	
	private int price;
	
	@ManyToOne
	@JoinColumn(name="route_id")
	private Route route;
	
	@ManyToOne
    @JoinColumn(name="bus_id", nullable=false)
	private Bus bus;

	@OneToMany(mappedBy="tour")
	private Set<Ticket> tickets;
	
	@OneToMany(mappedBy="tour")
	private Set<Chairs> chairs;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public Date getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(Date departureDate) {
		this.departureDate = departureDate;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
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

	public Set<Chairs> getChairs() {
		return chairs;
	}

	public void setChairs(Set<Chairs> chairs) {
		this.chairs = chairs;
	}
	
	
	
}
