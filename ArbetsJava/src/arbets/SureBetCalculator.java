package arbets;

import java.util.ArrayList;

public class SureBetCalculator {
	public static SureBet calculateSureBet(Bet bet1, Bet bet2) {
		double homeTeamBet1Rate = bet1.getHomeTeamRate();
		double visitingTeamBet2Rate = bet2.getVisitingTeamRate();
		double percentageOne = (1 / homeTeamBet1Rate) * 100;
		double percentageTwo = (1 / visitingTeamBet2Rate) * 100;
		double sumOfPercentages = percentageOne + percentageTwo;
		
		if (sumOfPercentages < 100) {
			double roundPercentage=Math.round(sumOfPercentages*100.0)/100.0;
			return new SureBet(bet1, bet2,roundPercentage);
		} else {
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
		SureBet surebet;
		SureBet surebetReversed;
		for (Bet bet1 : bets) {
			for (Bet bet2 : bets) {
				if (bet1.equals(bet2)) {
					break;
				}

				if (bet1.getGameId() == bet2.getGameId() && bet1.getBookmakerId() != bet2.getBookmakerId()) {
					surebet = calculateSureBet(bet1, bet2);
					surebetReversed = calculateSureBet(bet2, bet1);
					if (surebet != null) {
						sureBets.add(surebet);
					}
					if (surebetReversed != null) {
						sureBets.add(surebetReversed);
					}
				}
			}
		}
		
		
		return sureBets;
	
		}
}
