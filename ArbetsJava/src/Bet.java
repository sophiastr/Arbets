import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Bet {
	private int id;
	private double homeTeamRate;
	private double visitingTeamRate;
	private int gameId;
	private int bookmakerId;
	
	public Bet(int id, double homeTeamRate,double visitingTeamRate,  int gameId,int bookmakerId) {
		
		this.id = id;
		this.homeTeamRate = homeTeamRate;
		this.visitingTeamRate = visitingTeamRate;
		
		this.gameId = gameId;
		this.bookmakerId = bookmakerId;
	}
	

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public double gethomeTeamRate() {
		return homeTeamRate;
	}


	public void sethomeTeamRate(double homeTeamRate) {
		this.homeTeamRate = homeTeamRate;
	}


	public double getvisitingTeamRate() {
		return visitingTeamRate;
	}


	public void setvisitingTeamRate(double visitingTeamRate) {
		this.visitingTeamRate = visitingTeamRate;
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
		return "Bet [id=" + id + ", homeTeamRate=" + homeTeamRate + ", visitingTeamRate=" + visitingTeamRate + ", gameId=" + gameId + ", bookmakerId="
				+ bookmakerId + "]";
	}


	public static ArrayList<Bet> getBets() throws Exception{
		ArrayList<Bet> bets = new ArrayList<Bet>();
		String sql = "SELECT * FROM Bet;";
		//to object mpainei sto session mia fora
		DB db = new DB();

        try {
            Connection con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(sql);
            
            

            ResultSet rs = stmt.executeQuery();

            while (rs.next()){
                bets.add(new Bet(rs.getInt("id"), rs.getDouble("home_team_rate"), rs.getDouble("visiting_team_rate") , rs.getInt("game_id"),  rs.getInt("bookmaker_id") ));
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
