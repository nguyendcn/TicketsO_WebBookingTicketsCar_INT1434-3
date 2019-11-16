package com.ptithcm.models;

public class TicketInfoFound {
	private String passengerName;
	private String passengerNumberPhone;
	private String passengerEmail;
	private String departure;
	private String destiantion;
	private String depDate;
	private String companyName;
	private String companyHotline;
	private TicketModel ticketInfo;
	private boolean isFail;
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
	public TicketModel getTicketInfo() {
		return ticketInfo;
	}
	public void setTicketInfo(TicketModel ticketInfo) {
		this.ticketInfo = ticketInfo;
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
	public boolean getIsFail() {
		return isFail;
	}
	public void setIsFail(boolean isFail) {
		this.isFail = isFail;
	}
	public TicketInfoFound(String passengerName, String passengerNumberPhone, String passengerEmail, String departure,
			String destiantion, String depDate, String companyName, String companyHotline, TicketModel ticketInfo,
			boolean isFail) {
		super();
		this.passengerName = passengerName;
		this.passengerNumberPhone = passengerNumberPhone;
		this.passengerEmail = passengerEmail;
		this.departure = departure;
		this.destiantion = destiantion;
		this.depDate = depDate;
		this.companyName = companyName;
		this.companyHotline = companyHotline;
		this.ticketInfo = ticketInfo;
		this.isFail = isFail;
	}
	@Override
	public String toString() {
		return "TicketInfoFound [passengerName=" + passengerName + ", passengerNumberPhone=" + passengerNumberPhone
				+ ", passengerEmail=" + passengerEmail + ", departure=" + departure + ", destiantion=" + destiantion
				+ ", depDate=" + depDate + ", companyName=" + companyName + ", companyHotline=" + companyHotline
				+ ", ticketInfo=" + ticketInfo + ", isFail=" + isFail + "]";
	}
	public TicketInfoFound(String passengerName, String passengerNumberPhone, String passengerEmail, String departure,
			String destiantion, String depDate, String companyName, String companyHotline, TicketModel ticketInfo) {
		super();
		this.passengerName = passengerName;
		this.passengerNumberPhone = passengerNumberPhone;
		this.passengerEmail = passengerEmail;
		this.departure = departure;
		this.destiantion = destiantion;
		this.depDate = depDate;
		this.companyName = companyName;
		this.companyHotline = companyHotline;
		this.ticketInfo = ticketInfo;
	}
	public TicketInfoFound(String passengerName, String departure, String destiantion, String depDate,
			String companyName, String companyHotline, TicketModel ticketInfo) {
		super();
		this.passengerName = passengerName;
		this.departure = departure;
		this.destiantion = destiantion;
		this.depDate = depDate;
		this.companyName = companyName;
		this.companyHotline = companyHotline;
		this.ticketInfo = ticketInfo;
	}
	public TicketInfoFound() {
		super();
		
		this.isFail = true;
	}
	
	
}
