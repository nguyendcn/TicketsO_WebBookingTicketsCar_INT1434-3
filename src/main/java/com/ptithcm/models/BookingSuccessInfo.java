package com.ptithcm.models;

import java.util.List;

public class BookingSuccessInfo {
	private String passengerName;
	private String departure;
	private String destiantion;
	private String depDate;
	private String companyName;
	private String companyHotline;
	private List<TicketModel> lTicket;
	
	
	public String getPassengerName() {
		return passengerName;
	}
	public void setPassengerName(String passengerName) {
		this.passengerName = passengerName;
	}
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getDestiantion() {
		return destiantion;
	}
	public void setDestiantion(String destiantion) {
		this.destiantion = destiantion;
	}
	public String getDepDate() {
		return depDate;
	}
	public void setDepDate(String depDate) {
		this.depDate = depDate;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyHotline() {
		return companyHotline;
	}
	public void setCompanyHotline(String companyHotline) {
		this.companyHotline = companyHotline;
	}
	public List<TicketModel> getlTicket() {
		return lTicket;
	}
	public void setlTicket(List<TicketModel> lTicket) {
		this.lTicket = lTicket;
	}
	
	@Override
	public String toString() {
		return "BookingSuccessInfo [passengerName=" + passengerName + ", departure=" + departure + ", destiantion="
				+ destiantion + ", depDate=" + depDate + ", companyName=" + companyName + ", companyHotline="
				+ companyHotline + ", lTicket=" + lTicket + "]";
	}
	
	public BookingSuccessInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public BookingSuccessInfo(String passengerName, String departure, String destiantion, String depDate,
			String companyName, String companyHotline, List<TicketModel> lTicket) {
		super();
		this.passengerName = passengerName;
		this.departure = departure;
		this.destiantion = destiantion;
		this.depDate = depDate;
		this.companyName = companyName;
		this.companyHotline = companyHotline;
		this.lTicket = lTicket;
	}
	
	
}
