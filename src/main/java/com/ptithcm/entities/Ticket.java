package com.ptithcm.entities;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "Tickets")
public class Ticket {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Temporal(TemporalType.DATE)
	private Date createDate;
	
	@Temporal(TemporalType.DATE)
	private Date departureDate;
	
	@ManyToOne
	@JoinColumn(name="employee_id")
	private Employee employee;
	
	@ManyToOne
	@JoinColumn(name="customer_id")
	private Customer customer;
	
	@ManyToOne
	@JoinColumn(name="tour_id")
	private Tour tour;
	
	@OneToOne(mappedBy = "ticket")
	private TransactionHistory transactionHistory;
	
	

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

	public Date getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(Date departureDate) {
		this.departureDate = departureDate;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	

	public Tour getTour() {
		return tour;
	}

	public void setTour(Tour tour) {
		this.tour = tour;
	}

	public TransactionHistory getTransactionHistory() {
		return transactionHistory;
	}

	public void setTransactionHistory(TransactionHistory transactionHistory) {
		this.transactionHistory = transactionHistory;
	}
	
	
}
