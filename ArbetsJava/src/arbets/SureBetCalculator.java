package arbets;
import java.util.ArrayList;

public class SureBetCalculator {
	public static SureBet calculateSureBet(Bet bet1,Bet bet2){
		double rateOne = bet1.getHomeTeamRate();
		double rateTwo = bet2.getVisitingTeamRate();
		double percentageOne = (1/rateOne)*100;
		double percentageTwo = (1/rateTwo)*100;
		double sumOfPercentages = percentageOne + percentageTwo;
		if (sumOfPercentages < 100) {
			return new SureBet(bet1,  bet2);
		}else {
			return null;
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
				SureBet surebet = calculateSureBet(bet1,bet2);
				if ( surebet!= null){
					sureBets.add(surebet);
				}
				
			}
		}
		
		return sureBets;
	}
}
