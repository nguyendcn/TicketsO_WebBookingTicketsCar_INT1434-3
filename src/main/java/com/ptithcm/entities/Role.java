package com.ptithcm.entities;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="Roles")
public class Role {
	@Id
	@Column(name = "id", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(columnDefinition = "nvarchar(20)", nullable = false)
	private String name;
	
	@Column(columnDefinition = "nvarchar(50)", nullable = true)
	private String description;
	
	
	@OneToMany(mappedBy = "role")
	public Set<User> users;

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}
	
	
}
