package arbets;
import java.util.Date;


public class User {
    
    private int id;
	private String firstname;
	private String surename;
	private Date birthdate;
	private String email;
	private String username;
	private String password;
	private String country;
	private int points;
	private String bankAccount;
	
	public User(int id, String firstname, String surename, Date birthdate, String email, String username,
			String password, String country, int points, String bankAccount) {
		this.id = id;
		this.firstname = firstname;
		this.surename = surename;
		this.birthdate = birthdate;
		this.email = email;
		this.username = username;
		this.password = password;
		this.country = country;
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

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
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


    public User authenticate(String username, String password) throws Exception {

    }

    public void register(User user) throws Exception {
        
    }
}