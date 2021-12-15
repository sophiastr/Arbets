package arbets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Objects;

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


	public double getHomeTeamRate() {
		return homeTeamRate;
	}


	public void setHomeTeamRate(double homeTeamRate) {
		this.homeTeamRate = homeTeamRate;
	}


	public double getVisitingTeamRate() {
		return visitingTeamRate;
	}


	public void setVisitingTeamRate(double visitingTeamRate) {
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
	
	public String getBookmakerName() throws Exception {
		String sql = "SELECT name_of_bookmaker FROM bookmaker WHERE bookmaker_id=?;";
		 
	        DB db = new DB();
	        
	        try {
	            Connection con = db.getConnection();
	            PreparedStatement stmt = con.prepareStatement(sql);
	            stmt.setInt(1,this.bookmakerId);
	            ResultSet rs = stmt.executeQuery();

	            if (!rs.next()){
	                
	                rs.close();
		            stmt.close();
	                throw new Exception("No name found!");
	            }   
	            String bookmakerName= rs.getString("name_of_bookmaker");
	            rs.close();
	            stmt.close();
	            db.close();
				return bookmakerName;
	            
	           
	        } catch(Exception e) {
	            throw new Exception(e.getMessage());
	        } finally{

	            try {
	                db.close();
	            } catch (Exception e) {
	                
	            }
	            
	        }
			
	}

	public void setBookmakerId(int bookmakerId) {
		this.bookmakerId = bookmakerId;
	}


	@Override
	public String toString() {
		return "Bet [id=" + id + ", homeTeamRate=" + homeTeamRate + ", visitingTeamRate=" + visitingTeamRate + ", gameId=" + gameId + ", bookmakerId="
				+ bookmakerId + "]";
	}
	


	@Override
	public int hashCode() {
		return Objects.hash(bookmakerId, gameId, homeTeamRate, id, visitingTeamRate);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Bet other = (Bet) obj;
		return bookmakerId == other.bookmakerId && gameId == other.gameId
				&& Double.doubleToLongBits(homeTeamRate) == Double.doubleToLongBits(other.homeTeamRate)
				&& id == other.id
				&& Double.doubleToLongBits(visitingTeamRate) == Double.doubleToLongBits(other.visitingTeamRate);
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
                bets.add(new Bet(rs.getInt("bet_id"), rs.getDouble("home_team_rate"), rs.getDouble("visiting_team_rate") , rs.getInt("game_id"),  rs.getInt("bookmaker_id") ));
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
