package com.ptithcm.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="TransBusinessBranches")
public class TransBusinessBranch {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String representativeName;
	private String hotline;
	
	@ManyToOne
	@JoinColumn(name="transportationBusiness_id")
	private TransportationBusiness transportationBusiness;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRepresentativeName() {
		return representativeName;
	}
	public void setRepresentativeName(String representativeName) {
		this.representativeName = representativeName;
	}
	public String getHotline() {
		return hotline;
	}
	public void setHotline(String hotline) {
		this.hotline = hotline;
	}
	public TransportationBusiness getTransportationBusinesses() {
		return transportationBusiness;
	}
	public void setTransportationBusiness(TransportationBusiness transportationBusiness) {
		this.transportationBusiness = transportationBusiness;
	}

}
