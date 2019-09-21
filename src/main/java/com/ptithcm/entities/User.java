package com.ptithcm.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "Users")
public class User {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="userName",columnDefinition="nvarchar(50)", unique = true, nullable = false)
	private String name;

	@Column(columnDefinition="nvarchar(50)", unique = false, nullable = false)
	private String password;
	
	@Temporal(TemporalType.DATE)
	private Date registerDate;
	
	@Temporal(TemporalType.DATE)
	private Date lastTimeLogin;
	
	@Column(columnDefinition ="nvarchar(50)", unique = false, nullable = false)
	private String email;
	
	private String ipAddress;

	private String profile_id;
	
	private String avatar;
	
	@OneToOne()
	@JoinColumn(name="status_id")
	private Status status;
	
	@ManyToOne
	@JoinColumn(name="role_id")
	private Role role;
	
	
	public User(int id, String name, String password, Date registerDate, Date lastTimeLogin, String email,
			String ipAddress, String profile_id, String avatar, Status status, Role role) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.registerDate = registerDate;
		this.lastTimeLogin = lastTimeLogin;
		this.email = email;
		this.ipAddress = ipAddress;
		this.profile_id = profile_id;
		this.avatar = avatar;
		this.status = status;
		this.role = role;
	}

	public User() {
		this.id = 99999999;
		this.name = this.password = this.email  = this.ipAddress = this.profile_id = this.avatar = "default";
	}
	
	public User(int id, String name, String password) {
		this.id = id;
		this.name = name;
		this.password = password;
	}
	
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public Date getLastTimeLogin() {
		return lastTimeLogin;
	}

	public void setLastTimeLogin(Date lastTimeLogin) {
		this.lastTimeLogin = lastTimeLogin;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}


	public String getProfile_id() {
		return profile_id;
	}

	public void setProfile_id(String profile_id) {
		this.profile_id = profile_id;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", registerDate=" + registerDate
				+ ", lastTimeLogin=" + lastTimeLogin + ", email=" + email + ", ipAddress=" + ipAddress + ", profile_id="
				+ profile_id + ", avatar=" + avatar + ", status=" + status + ", role=" + role + "]";
	}
}
