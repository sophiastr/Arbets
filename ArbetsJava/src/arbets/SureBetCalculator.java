package arbets;
import java.util.ArrayList;

public class SureBetCalculator {
	public static SureBet calculateSureBet(Bet bet1,Bet bet2){
		double rateOne = bet1.getHomeTeamRate();
		double rateTwo = bet2.getVisitingTeamRate();
		double percentageOne = (1/rateOne)*100;
		double percentageTwo = (1/rateTwo)*100;
		double sumOfPercentages = percentageOne + percentageTwo;
		//epistrofi sumofpresentages
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
		SureBet surebet;
		for (Bet bet1 : bets) {
			for (Bet bet2 : bets) {
				if (bet1.equals(bet2)) {
					break;
				}

				if (bet1.getGameId() == bet2.getGameId() && bet1.getBookmakerId() != bet2.getBookmakerId()) {
					surebet = calculateSureBet(bet1, bet2);
					if (surebet != null) {

						sureBets.add(surebet);
					}
				}
			}
		}
		
		
		ArrayList<SureBet> sureBetstry = new ArrayList<SureBet>();
		SureBet surebettry;
		boolean flag= false;
		for (Bet bet1 : bets) {
			for (Bet bet2 : bets) {
				flag=false;
				
	if ( !bet1.equals(bet2) && bet1.getGameId() == bet2.getGameId() && bet1.getBookmakerId() != bet2.getBookmakerId()) {
					
					surebettry = calculateSureBet(bet1, bet2);
					if (surebettry != null) {
						for (SureBet currSure:sureBetstry ) {
							if (currSure.getBet1().equals(surebettry.getBet2() )&& currSure.getBet2().equals(surebettry.getBet1()) ) {
								flag=true;
							}
						}
						if (! flag){
							sureBetstry.add(surebettry);
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
		return sureBets;
	}
}
