package com.ptithcm.entities;


import javax.persistence.*;

@Entity
@Table(name = "Chairs")
public class Chairs {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(nullable=true)
	private String name;
	@Column(nullable=true)
	private int status_id;
	@Column(nullable=true)
	private int ticket_id;
	
	@ManyToOne
	@JoinColumn(name="tours_id")
	private Tour tour;
	

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


	public int getStatus_id() {
		return status_id;
	}

	public void setStatus_id(int status_id) {
		this.status_id = status_id;
	}

	public int getTicket_id() {
		return ticket_id;
	}

	public void setTicket_id(int ticket_id) {
		this.ticket_id = ticket_id;
	}

	public Tour getTour() {
		return tour;
	}

	public void setTour(Tour tour) {
		this.tour = tour;
	}


	
}
