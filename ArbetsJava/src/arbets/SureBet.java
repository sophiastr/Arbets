package arbets;

import java.util.ArrayList;
import java.util.Objects;

public class SureBet {
	private static int counter = 0;
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

	public ArrayList<String> findTeams() {
		ArrayList<String> teams = new ArrayList<String>();
		Team team1 = new Team();
		Team team2 = new Team();
		String name_team1 = team1.getName();
		String name_team2 = team2.getName();
		teams.add(name_team1);
		teams.add(name_team2);
		return teams;
	}

	public String findSport() {
		Sport sport = new Sport();
		String nameSport = sport.getName();
		return nameSport;
	}

	@Override
	public String toString() {
		return "SureBet [id=" + id + ", bet1=" + bet1 + ", bet2=" + bet2 + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(bet1, bet2, id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SureBet other = (SureBet) obj;
		// den tsekarei an einai idio me antistrofa bets
		return (bet1.equals( other.bet1) && bet2.equals(other.bet2) ) || (bet1.equals( other.bet2) && bet2.equals(other.bet1));
	}
}