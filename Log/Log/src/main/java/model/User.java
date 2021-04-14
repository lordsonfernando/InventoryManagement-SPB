package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * User table
 * 
 * @author VK5061978
 *
 */
@Entity
@Table(name = "Users")
public class User {
	@Id
	@Column
	private String id; // user ID
	@Column(nullable = false)
	private String password; // user Password
	@Column(nullable = false)
	private String role; // user role

	/**
	 * Getters and setters
	 * 
	 * @return
	 */
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	/**
	 * constructor with arguments
	 * 
	 * @param id
	 * @param password
	 * @param role
	 */
	public User(String id, String password, String role) {
		super();
		this.id = id;
		this.password = password;
		this.role = role;
	}

	/**
	 * constructor without arguments
	 * 
	 */
	public User() {
		super();

	}

	// convert the hash code to String
	@Override
	public String toString()

	{
		return id + " " + password + " " + role;
	}

}
