package arbets;

import java.util.ArrayList;

public class SureBet {
	private static int counter=0;
	private int id;
	private Bet bet1;
	private Bet bet2;
	
	
	
	public SureBet(Bet bet1, Bet bet2) {
		this.id = counter;
		counter++;
		this.bet1 = bet1;
		this.bet2 = bet2;
	
	}
	
	public Bet getBet1() {
		return bet1;
	}
	public void setBet1(Bet bet1) {
		this.bet1 = bet1;
	}
	public Bet getBet2() {
		return bet2;
	}
	public void setBet2(Bet bet2) {
		this.bet2 = bet2;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public ArrayList<Team> findTeams(){
		ArrayList<Team> teams = new ArrayList<Team>();
		return teams;
	}
	public Sport findSport() {
		Sport sport1= new Sport();
		return sport1;
	}
}