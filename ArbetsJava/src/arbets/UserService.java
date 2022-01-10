package arbets;
import java.sql.*;

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
					throw new Exception("Sorry, user does not exist!");
				}

				User user = new User(rs.getInt("user_id"), rs.getString("firstname"),  rs.getString("lastname"), rs.getString("username"), rs.getString("password"), rs.getDate("birthday"), rs.getString("bank_account"), rs.getString("email"), rs.getInt("points")) ;
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
		String sql = "INSERT INTO user (firstname, lastname, username, password ,birthday, bank_account, email, points) VALUES (?, ?, ?, ?, ?, ?, ?,?);" ;
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
//            stmt.setInt(1, user.getId());
			stmt.setString(1, user.getFirstname());
			stmt.setString(2, user.getSurename());
            stmt.setString(3, user.getUsername());
            stmt.setString(4, user.getPassword());
			stmt.setDate(5, (Date) (user.getBirthdate()));
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
    
    
    
    public void editProf(int id, String newusername, String bankAccount, String email, Date bday, String password) throws Exception {
        DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		String sql = "UPDATE user SET username = ?, bank_account = ?, email = ?, birthday = ?, password = ? WHERE user_id = ?;";
		
		try {
			con = db.getConnection();
			
			stmt = con.prepareStatement(sql);
			//set parameters
			stmt.setString(1, newusername);
			stmt.setString(2, bankAccount);
			stmt.setString(3, email);
			stmt.setDate(4, bday);
			stmt.setString(5, password);
			
			stmt.setInt(6, id);

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