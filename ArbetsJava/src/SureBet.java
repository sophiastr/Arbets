

public class SureBet {
	private static int counter=0;
	private int id;
	private Bet bet1;
	private Bet bet2;
	private double amountBet1;
	private double amountBet2;
	
	
	public SureBet(Bet bet1, Bet bet2, double amountBet1, double amountBet2) {
		this.id = counter;
		counter++;
		this.bet1 = bet1;
		this.bet2 = bet2;
		this.amountBet1 = amountBet1;
		this.amountBet2 = amountBet2;
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
	public double getAmountBet1() {
		return amountBet1;
	}
	public void setAmountBet1(double amountBet1) {
		this.amountBet1 = amountBet1;
	}
	public double getAmountBet2() {
		return amountBet2;
	}
	public void setAmountBet2(double amountBet2) {
		this.amountBet2 = amountBet2;
	}

}