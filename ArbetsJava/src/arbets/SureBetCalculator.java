package arbets;

import java.util.ArrayList;

public class SureBetCalculator {
	public static SureBet calculateSureBet(Bet bet1, Bet bet2) {
		double homeTeamBet1Rate = bet1.getHomeTeamRate();
		double visitingTeamBet2Rate = bet2.getVisitingTeamRate();
		double percentageOne = (1 / homeTeamBet1Rate) * 100;
		double percentageTwo = (1 / visitingTeamBet2Rate) * 100;
		double sumOfPercentages = percentageOne + percentageTwo;
		// epistrofi sumofpresentages
		if (sumOfPercentages < 100) {

			return new SureBet(bet1, bet2);
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
		
		/**
		ArrayList<SureBet> sureBetstry = new ArrayList<SureBet>();
		SureBet surebettry;
		SureBet surbetioum;
		boolean flagioum= false;
		boolean flag= false;
		for (Bet bet1 : bets) {
			for (Bet bet2 : bets) {
				flag=false;
				flagioum = false;
				
	if ( !bet1.equals(bet2) && bet1.getGameId() == bet2.getGameId() && bet1.getBookmakerId() != bet2.getBookmakerId()) {
					
					surebettry = calculateSureBet(bet1, bet2);
					surbetioum = calculateSureBet(bet2, bet1);
					if (surebettry != null) {
						for (SureBet currSure:sureBetstry ) {
							if (currSure.getBet1().equals(surebettry.getBet2() )&& currSure.getBet2().equals(surebettry.getBet1()) ) {
								flag=true;
							}
						}
						if (! flag){
							sureBetstry.add(surebettry);
							}
						if (surbetioum != null) {
							for (SureBet currSure:sureBetstry ) {
								if (currSure.getBet1().equals(surbetioum.getBet2() )&& currSure.getBet2().equals(surbetioum.getBet1()) ) {
									flagioum=true;
								}
							}
							if (! flagioum){
								sureBetstry.add(surbetioum);
								}
					}
				}
			}
		}
		}

		System.out.println(sureBets.size());
		System.out.println(sureBetstry.size());
		
		int counter=0;
		 
		  for (SureBet currSure:sureBetstry) {
			flag=false;
			for (SureBet sureBet:sureBets ) {
				if (sureBet.equals(currSure)) {
					flag=true;
					break;
				}
			}
			if (!flag) {
				counter++;
			}
		}
		
		System.out.println(counter);
		System.out.println("anna");
		for (int i = 0 ; i<sureBets.size() ; i++) {
				System.out.println(sureBets.get(i));
			}
		System.out.println("nikolas");
		for (int i = 0 ; i<sureBetstry.size() ; i++) {
			
			System.out.println(sureBetstry.get(i));
			
		}**/
		return sureBets;
	
		}
}
