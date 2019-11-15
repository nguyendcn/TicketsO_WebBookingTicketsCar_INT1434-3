package com.ptithcm.models;

public class BookingInfo {

	private int id_tour;
	private String listSeat;
	private String name;
	private String numberPhone;
	private String email;
	private String description;
	
	
	public BookingInfo(int id) {
		super();
		this.id_tour = id;
	}
	
	
	public BookingInfo() {
		super();
	}

	public BookingInfo(int id_tour, String listSeat, String name, String numberPhone, String email,
			String description) {
		super();
		this.id_tour = id_tour;
		this.listSeat = listSeat;
		this.name = name;
		this.numberPhone = numberPhone;
		this.email = email;
		this.description = description;
	}


	public int getId_tour() {
		return id_tour;
	}
	public void setId_tour(int id_tour) {
		this.id_tour = id_tour;
	}
	public String getListSeat() {
		return listSeat;
	}
	public void setListSeat(String listSeat) {
		this.listSeat = listSeat;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumberPhone() {
		return numberPhone;
	}
	public void setNumberPhone(String numberPhone) {
		this.numberPhone = numberPhone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "BookingInfo [id_tour=" + id_tour + ", listSeat=" + listSeat + ", name=" + name + ", numberPhone="
				+ numberPhone + ", email=" + email + ", description=" + description + "]";
	}
	
	
}
