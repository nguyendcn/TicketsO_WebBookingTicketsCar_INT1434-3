package com.ptithcm.models;

import java.util.List;

public class HistoryBooking {
	private String passengerName;
	private String passengerNumberPhone;
	private String passengerEmail;
	private List<TicketModel> lTicket;
	
	
	private boolean isFail;
	
	public String getPassengerName() {
		return passengerName;
	}
	public void setPassengerName(String passengerName) {
		this.passengerName = passengerName;
	}
	public String getPassengerNumberPhone() {
		return passengerNumberPhone;
	}
	public void setPassengerNumberPhone(String passengerNumberPhone) {
		this.passengerNumberPhone = passengerNumberPhone;
	}
	public String getPassengerEmail() {
		return passengerEmail;
	}
	public void setPassengerEmail(String passengerEmail) {
		this.passengerEmail = passengerEmail;
	}
	public List<TicketModel> getlTicket() {
		return lTicket;
	}
	public void setlTicket(List<TicketModel> lTicket) {
		this.lTicket = lTicket;
	}
	public boolean getIsFail() {
		return isFail;
	}
	public void setIsFail(boolean isFail) {
		this.isFail = isFail;
	}
	
	
	public HistoryBooking() {
		super();

		this.isFail = true;
	}
	
	
	
	
}
