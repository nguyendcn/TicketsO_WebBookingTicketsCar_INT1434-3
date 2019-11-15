package com.ptithcm.models;

public class RouteModel {

	private String dep;
	private String des;
	private String totalTime;
	private String distance;
	public String getDep() {
		return dep;
	}
	public void setDep(String dep) {
		this.dep = dep;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public String getTotalTime() {
		return totalTime;
	}
	public void setTotalTime(String totalTime) {
		this.totalTime = totalTime;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	
	public RouteModel(String dep, String des, String totalTime, String distance) {
		super();
		this.dep = dep;
		this.des = des;
		this.totalTime = totalTime;
		this.distance = distance;
	}
	
	@Override
	public String toString() {
		return "Route [dep=" + dep + ", des=" + des + ", totalTime=" + totalTime + ", distance=" + distance + "]";
	}
	
	
}
