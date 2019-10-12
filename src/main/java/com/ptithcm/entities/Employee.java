package com.ptithcm.entities;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;



@Entity
@Table(name="Employees")
public class Employee {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String lastName;
	private String firstName;
	private boolean gender;
	
	@Temporal(TemporalType.DATE)
	private Date dateOfBirth;
	
	private String identityCard;
	private String address;
	private String numberPhone;
	
	@OneToMany(mappedBy="employee")
	private Set<Ticket> tickets;
	
	@ManyToOne
	@JoinColumn(name="transportationBusinesses_id")
	private TransportationBusiness transportationBusiness;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getIdentityCard() {
		return identityCard;
	}

	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNumberPhone() {
		return numberPhone;
	}

	public void setNumberPhone(String numberPhone) {
		this.numberPhone = numberPhone;
	}

	 public Set<Ticket> getTickets() {
		return tickets;
	}

	public void setTickets(Set<Ticket> tickets) {
		this.tickets = tickets;
	}

	public TransportationBusiness getTransportationBusiness() {
		return transportationBusiness;
	}

	public void setTransportationBusiness(TransportationBusiness transportationBusiness) {
		this.transportationBusiness = transportationBusiness;
	}

	@Override
	    public String toString() { 
	        return String.format("{id:" + this.id + ", firstName:" + this.firstName +
	        		", lastName" + this.lastName + ", gender:" + this.gender +
	        		", dateOfBirth:" + this.dateOfBirth + ", identityCard:" + this.identityCard +
	        		", address:" + this.address + ", numberPhone:" + this.numberPhone + "}"); 
	    } 
}
