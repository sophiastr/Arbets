package arbets;
import java.sql.*;
import java.util.*;

public class UserService {

    public User authenticate(String username, String password) throws Exception {
        
			DB db = new DB();
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

				if (!rs.next()){
					rs.close();
					stmt.close();
					db.close();
				}

				User user = new User(rs.getString("firstname"),  rs.getString("lastname"), rs.getString("username"), rs.getString("password"), rs.getDate("birthday"), rs.getString("bank_account"), rs.getString("email"), rs.getInt("points")) ;
				return user;
				
			} catch (Exception e) {
				throw new Exception(e.getMessage());
			} finally{
				try {
					db.close();
				} catch (Exception e) {
					
				}
            }
    }

    public void register(User user) throws Exception {
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "INSERT INTO user (user_id, firstname, lastname, username, password ,birthdate, bank_account, email, points) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?);" ;
		String checkIfUserExists = "SELECT * FROM user WHERE username =? or email =?;";

		try {
			con = db.getConnection();
			
			stmt = con.prepareStatement(checkIfUserExists);
			//set parameters
			stmt.setString(1, user.getUsername() );
			stmt.setString(2, user.getEmail());

			rs = stmt.executeQuery();

			if (rs.next()){
				stmt.close();
				rs.close();
				db.close();
				throw new Exception("Sorry, username or email already registered!");
			}


			stmt = con.prepareStatement(sql);

			//set parameters
            stmt.setInt(1, user.getId());
			stmt.setString(1, user.getFirstname());
			stmt.setString(2, user.getSurename());
            stmt.setString(4, user.getUsername());
            stmt.setString(5, user.getPassword());
			stmt.setString(3, user.getEmail());
			stmt.setDate(4, new java.sql.Date(user.getBirthdate().getTime()));
            stmt.setString(5, user.getBankAccount());
			stmt.setString(3, user.getEmail());
            stmt.setInt(3, user.getPoints());
			
			
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
}