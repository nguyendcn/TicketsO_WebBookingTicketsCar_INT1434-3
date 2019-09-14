package com.ptithcm.entities;

import javax.persistence.*;

@Entity
@Table(name = "Coaches")
public class Coach {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String licensePlate;
	private String images;
	
	@ManyToOne
	@JoinColumn(name="coachType_id")
	private CoachType coachType;
	
	@ManyToOne
	@JoinColumn(name="coachBrand_id")
	private CoachBrand coachBrand;
	
	@ManyToOne
	@JoinColumn(name="transportionBusiness_id")
	private TransportationBusiness transportationBusiness;
	
	@OneToOne(mappedBy = "coach")
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

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public CoachType getCoachType() {
		return coachType;
	}

	public void setCoachType(CoachType coachType) {
		this.coachType = coachType;
	}

	public CoachBrand getCoachBrand() {
		return coachBrand;
	}

	public void setCoachBrand(CoachBrand coachBrand) {
		this.coachBrand = coachBrand;
	}
	
	public String getLicensePlate() {
		return licensePlate;
	}

	public void setLicensePlate(String licensePlate) {
		this.licensePlate = licensePlate;
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
