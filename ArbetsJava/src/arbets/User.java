package arbets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

public class User {

	private int id;
	private String firstname;
	private String surename;
	private Date birthdate;
	private String email;
	private String username;
	private String password;
	private int points;
	private String bankAccount;

	public User(int id, String firstname, String surename, String username, String password, Date birthdate,
			String bankAccount, String email, int points) {
		this.id = id;
		this.firstname = firstname;
		this.surename = surename;
		this.birthdate = birthdate;
		this.email = email;
		this.username = username;
		this.password = password;
		this.points = points;
		this.bankAccount = bankAccount;
	}

	public User(String firstname, String surename, String username, String password, Date birthdate, String bankAccount,
			String email, int points) {
		this.id = -1;
		this.firstname = firstname;
		this.surename = surename;
		this.birthdate = birthdate;
		this.email = email;
		this.username = username;
		this.password = password;
		this.points = points;
		this.bankAccount = bankAccount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getSurename() {
		return surename;
	}

	public void setSurename(String surename) {
		this.surename = surename;
	}

	public Date getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public String getBankAccount() {
		return bankAccount;
	}

	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", firstname=" + firstname + ", surename=" + surename + ", email=" + email
				+ ", username=" + username + ", password=" + password + "]";
	}

}