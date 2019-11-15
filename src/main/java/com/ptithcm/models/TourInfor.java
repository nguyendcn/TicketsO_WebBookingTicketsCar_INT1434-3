package com.ptithcm.models;

public class TourInfor {
	
	private int id;
	
	private String tenNhaXe;
	private String timeStart;
	private String timeEnd;
	private String typeBus;
	private String ableChair;
	private String cost;
	
	public TourInfor(int id, String tenNhaXe, String timeStart, String timeEnd, String typeBus, String ableChair,
			String cost) {
		super();
		this.id = id;
		this.tenNhaXe = tenNhaXe;
		this.timeStart = timeStart;
		this.timeEnd = timeEnd;
		this.typeBus = typeBus;
		this.ableChair = ableChair;
		this.cost = cost;
	}
	
	@Override
	public String toString() {
		return "TourInfor [id=" + id + ", tenNhaXe=" + tenNhaXe + ", timeStart=" + timeStart + ", timeEnd=" + timeEnd
				+ ", typeBus=" + typeBus + ", ableChair=" + ableChair + ", cost=" + cost + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenNhaXe() {
		return tenNhaXe;
	}
	public void setTenNhaXe(String tenNhaXe) {
		this.tenNhaXe = tenNhaXe;
	}
	public String getTimeStart() {
		return timeStart;
	}
	public void setTimeStart(String timeStart) {
		this.timeStart = timeStart;
	}
	public String getTimeEnd() {
		return timeEnd;
	}
	public void setTimeEnd(String timeEnd) {
		this.timeEnd = timeEnd;
	}
	public String getTypeBus() {
		return typeBus;
	}
	public void setTypeBus(String typeBus) {
		this.typeBus = typeBus;
	}
	public String getAbleChair() {
		return ableChair;
	}
	public void setAbleChair(String ableChair) {
		this.ableChair = ableChair;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}

}
