package com.ptithcm.entities;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
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
	
	@Temporal(TemporalType	.DATE)
	private Date lastTimeLogin;
	
	@Column(columnDefinition ="nvarchar(50)", unique = false, nullable = false)
	private String email;

	private String profile_id;
	
	private String avatar;
	
	@ManyToOne
	@JoinColumn(name = "role_id")
	private Role role;
	
	@ManyToOne
	@JoinColumn(name = "status_id")
	private Status status;

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

	public String getProfile_id() {
		return profile_id;
	}

	public void setProfile_id(String profile_id) {
		this.profile_id = profile_id;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	
	
	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public User(int id, String name, String password, Date registerDate, Date lastTimeLogin, String email,
			String profile_id, String avatar, Role role, Status status) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.registerDate = registerDate;
		this.lastTimeLogin = lastTimeLogin;
		this.email = email;
		this.profile_id = profile_id;
		this.avatar = avatar;
		this.role = role;
		this.status = status;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", registerDate=" + registerDate
				+ ", lastTimeLogin=" + lastTimeLogin + ", email=" + email + ", profile_id=" + profile_id + ", avatar="
				+ avatar + ", role=" + role + ", status=" + status + "]";
	}

	
}
