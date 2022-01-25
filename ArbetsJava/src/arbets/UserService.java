package arbets;

import java.sql.*;
import java.util.Calendar;

public class UserService {

	public User authenticate(String username, String password,DB db) throws Exception {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM user WHERE username =? AND password = ?;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sql);

			// set parameters
			stmt.setString(1, username);
			stmt.setString(2, password);

			rs = stmt.executeQuery();

			if (!rs.next()) {
				rs.close();
				stmt.close();
				db.close();
				throw new Exception("Sorry, user does not exist!");
			}

			User user = new User(rs.getInt("user_id"), rs.getString("firstname"), rs.getString("lastname"),
					rs.getString("username"), rs.getString("password"), rs.getDate("birthday"),
					rs.getString("bank_account"), rs.getString("email"), rs.getInt("points"));
			return user;

		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {

			}
		}
	}

	public void register(User user,DB db) throws Exception {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "INSERT INTO user (firstname, lastname, username, password ,birthday, bank_account, email, points) VALUES (?, ?, ?, ?, ?, ?, ?,?);";
		String checkIfUserExists = "SELECT * FROM user WHERE username =? or email =?;";

		try {
			con = db.getConnection();

			stmt = con.prepareStatement(checkIfUserExists);
			// set parameters
			stmt.setString(1, user.getUsername());
			stmt.setString(2, user.getEmail());

			rs = stmt.executeQuery();

			if (rs.next()) {
				stmt.close();
				rs.close();
				db.close();
				throw new Exception("Sorry, username or email already registered!");
				
			}

			
		    java.sql.Date sqlDate = new java.sql.Date(user.getBirthdate().getTime());
		    
			stmt = con.prepareStatement(sql);

			// set parameters
//            stmt.setInt(1, user.getId());
			stmt.setString(1, user.getFirstname());
			stmt.setString(2, user.getSurename());
			stmt.setString(3, user.getUsername());
			stmt.setString(4, user.getPassword());
			stmt.setDate(5, sqlDate);
			stmt.setString(6, user.getBankAccount());
			stmt.setString(7, user.getEmail());
			stmt.setInt(8, user.getPoints());

			stmt.executeUpdate();

			stmt.close();
			db.close();
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {

			}
		}

	}

	public void editProf(int id, String newusername, String bankAccount, String email, String password,DB db)
			throws Exception {
		Connection con = null;
		PreparedStatement stmt = null;
		String sql = "UPDATE user SET username = ?, bank_account = ?, email = ?, password = ? WHERE user_id = ?;";

		try {
			con = db.getConnection();

			stmt = con.prepareStatement(sql);
			// set parameters
			stmt.setString(1, newusername);
			stmt.setString(2, bankAccount);
			stmt.setString(3, email);
			stmt.setString(4, password);

			stmt.setInt(5, id);

			stmt.executeUpdate();

			stmt.close();
			db.close();
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {

			}
		}

	}
	public String getNameByUserId(int id,DB db) throws Exception {

	
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT username FROM user WHERE user_id=?;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sql);

			// set parameters
			stmt.setInt(1, id);

			rs = stmt.executeQuery();

			if (!rs.next()) {
				rs.close();
				stmt.close();
				db.close();
				throw new Exception("No user found!");
			}

			return rs.getString("username");

		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {

			}
		}
	}
	
	public int getPointsByUserId(int id,DB db) throws Exception {

		
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT points FROM user WHERE user_id=?;";

		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sql);

			// set parameters
			stmt.setInt(1, id);

			rs = stmt.executeQuery();

			if (!rs.next()) {
				rs.close();
				stmt.close();
				db.close();
				throw new Exception("No user found!");

			}

			return rs.getInt("points");

		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {

			}
		}
	}
	
	
	public String findImage(int userId,DB db) throws Exception {
		int points = getPointsByUserId(userId, db);
		
		if (points <= 500) {
			return "1.png";
		}else if(points <= 1500) {
			return "2.jpg";
		}else if(points <= 2500) {
			return "3.png";
		}else if(points <= 3500) {
			return "4.jpg";
		}else if(points <= 6000) {
			return "5.jpg";
		}else {
			return "6.png";
		}
	}
}