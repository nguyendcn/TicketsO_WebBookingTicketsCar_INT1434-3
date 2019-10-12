package com.ptithcm.entities;

import javax.persistence.*;

@Entity
@Table(name = "Buses")
public class Bus {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String licensePlate;
	private String images;
	
	@ManyToOne
	@JoinColumn(name="busType_id")
	private BusType busType;
	
	@ManyToOne
	@JoinColumn(name="transportionBusiness_id")
	private TransportationBusiness transportationBusiness;
	
	@OneToOne(mappedBy = "bus")
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

	public String getLicensePlate() {
		return licensePlate;
	}

	public void setLicensePlate(String licensePlate) {
		this.licensePlate = licensePlate;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public BusType getBusType() {
		return busType;
	}

	public void setBusType(BusType busType) {
		this.busType = busType;
	}


	public TransportationBusiness getTransportationBusiness() {
		return transportationBusiness;
	}

	public void setTransportationBusiness(TransportationBusiness transportationBusiness) {
		this.transportationBusiness = transportationBusiness;
	}

	public Tour getTour() {
		return tour;
	}

	public void setTour(Tour tour) {
		this.tour = tour;
	}

	
	
}
