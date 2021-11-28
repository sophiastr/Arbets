import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Sport {
	int id;
	String name;
	public Sport(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Sport() {
		// TODO Auto-generated constructor stub
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
	
public List<Sport> getSports() throws Exception {
        
        List<Sport> sports = new ArrayList<>();

        String sql = "SELECT sport_id, name FROM sport;";
        DB db = new DB();
        try {
            Connection con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()){
                sports.add(new Sport(rs.getInt("sport_id"), rs.getString("name")));
            }   

            rs.close();
            stmt.close();
            db.close();

            return sports;
        } catch(Exception e) {
            throw new Exception(e.getMessage());
        } finally{

            try {
                db.close();
            } catch (Exception e) {
                
            }
            
        }
    
	}
	
}
