package com.ptithcm.models;

public class InfoFind {
	private String ticketCode;
	private String numberPhone;
	
	public String getTicketCode() {
		return ticketCode;
	}
	public void setTicketCode(String seatCode) {
		this.ticketCode = seatCode;
	}
	public String getNumberPhone() {
		return numberPhone;
	}
	public void setNumberPhone(String numberPhone) {
		this.numberPhone = numberPhone;
	}
	
	@Override
	public String toString() {
		return "InfoFind [ticketCode=" + ticketCode + ", numberPhone=" + numberPhone + "]";
	}
	
	public InfoFind() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public InfoFind(String ticketCode, String numberPhone) {
		super();
		this.ticketCode = ticketCode;
		this.numberPhone = numberPhone;
	}
	
	
	
}
