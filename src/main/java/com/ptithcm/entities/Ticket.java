package com.ptithcm.entities;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "Tickets")
public class Ticket {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Temporal(TemporalType.DATE)
	private Date createDate;
		
	@ManyToOne
	@JoinColumn(name="customer_id")
	private Customer customer;
	
	private int id_Chair;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}


	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public int getId_Chair() {
		return id_Chair;
	}

	public void setId_Chair(int id_Chair) {
		this.id_Chair = id_Chair;
	}
	
}
