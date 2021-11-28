

public class Bet {
	private int id;
	private double rate;
	private Game game;
	@Override
	public String toString() {
		return "Bet [id=" + id + ", rate=" + rate + ", game=" + game + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getRate() {
		return rate;
	}
	public void changeRate(double rate) {
		this.rate = rate;
	}
	public Game getGame() {
		return game;
	}
	public void setGame(Game game) {
		this.game = game;
	}
	
	
}
