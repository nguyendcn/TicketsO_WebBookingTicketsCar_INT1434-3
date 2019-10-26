package com.ptithcm.entities;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "Buses")
public class Bus {
	
	@Id
	private int id;
	private String name;
	private String license;
	private String images;
	
	@ManyToOne
	@JoinColumn(name="busType_id")
	private BusType busType;
	
	@ManyToOne
	@JoinColumn(name="transportionBusiness_id")
	private TransportationBusiness transportationBusiness;
	
	@OneToMany(mappedBy="bus")
	private Set<Tour> tours;

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

	public Set<Tour> getTours() {
		return tours;
	}

	public void setTours(Set<Tour> tours) {
		this.tours = tours;
	}

	public String getLicense() {
		return license;
	}

	public void setLicense(String license) {
		this.license = license;
	}



	
	
}
