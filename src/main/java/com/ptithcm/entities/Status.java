package com.ptithcm.entities;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "Statuses")
public class Status {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	
	@OneToMany(mappedBy="status")
	private Set<TransactionHistory> transactionHistories;

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<TransactionHistory> getTransactionHistories() {
		return transactionHistories;
	}

	public void setTransactionHistories(Set<TransactionHistory> transactionHistories) {
		this.transactionHistories = transactionHistories;
	}
}
