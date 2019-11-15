package com.ptithcm.models;

public class TicketModel {
	private int id;
	private String seatCode;
	private boolean status = true;
	
	
	
	
	
	public TicketModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TicketModel(int id, String seatCode, boolean status) {
		super();
		this.id = id;
		this.seatCode = seatCode;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSeatCode() {
		return seatCode;
	}

	public void setSeatCode(String seatCode) {
		this.seatCode = seatCode;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "TicketModel [id=" + id + ", seatCode=" + seatCode + ", status=" + status + "]";
	}
	
	
}
