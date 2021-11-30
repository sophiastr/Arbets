import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Bet {
	private int id;
	private double rate1;
	private double rate2;
	private int gameId;
	private int bookmakerId;
	
	public Bet(int id, double rate1,double rate2,  int gameId,int bookmakerId) {
		
		this.id = id;
		this.rate1 = rate1;
		this.rate2 = rate2;
		
		this.gameId = gameId;
		this.bookmakerId = bookmakerId;
	}
	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public double getRate1() {
		return rate1;
	}


	public void setRate1(double rate1) {
		this.rate1 = rate1;
	}


	public double getRate2() {
		return rate2;
	}


	public void setRate2(double rate2) {
		this.rate2 = rate2;
	}


	public int getGameId() {
		return gameId;
	}


	public void setGameId(int gameId) {
		this.gameId = gameId;
	}


	public int getBookmakerId() {
		return bookmakerId;
	}


	public void setBookmakerId(int bookmakerId) {
		this.bookmakerId = bookmakerId;
	}


	@Override
	public String toString() {
		return "Bet [id=" + id + ", rate1=" + rate1 + ", rate2=" + rate2 + ", gameId=" + gameId + ", bookmakerId="
				+ bookmakerId + "]";
	}


	public static ArrayList<Bet> getBets() throws Exception{
		ArrayList<Bet> bets = new ArrayList<Bet>();
		String sql = "SELECT * FROM Bet;";
        DB db = new DB();

        try {
            Connection con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(sql);
            
            

            ResultSet rs = stmt.executeQuery();

            while (rs.next()){
                bets.add(new Bet(rs.getInt("id"), rs.getDouble("rate1"), rs.getDouble("rate2") , rs.getInt("game_id"),  rs.getInt("bookmaker_id") ));
            }   

            rs.close();
            stmt.close();
            db.close();

            return bets;
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
