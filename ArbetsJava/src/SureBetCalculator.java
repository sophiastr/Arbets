import java.util.ArrayList;

public class SureBetCalculator {
	public static boolean calculateSureBet(Bet bet1,Bet bet2){
		double rateOne = bet1.getRate();
		double rateTwo = bet2.getRate();
		double percentageOne = (1/rateOne)*100;
		double percentageTwo = (1/rateTwo)*100;
		double sumOfPercentages = percentageOne + percentageTwo;
		if (sumOfPercentages < 100) {
			return true;
		}else {
			return false;
		}
	}
	public static ArrayList<SureBet> createSureBets(){
		
		
		ArrayList<Bet> bets= new ArrayList<Bet>();
		try {
			bets = Bet.getBets();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ArrayList<SureBet> sureBets = new ArrayList<SureBet>();
		for (Bet bet1: bets) {
			for(Bet bet2:bets) {
				calc
			}
		}
		
		return sureBets;
	}
}
