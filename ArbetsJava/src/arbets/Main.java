package arbets;
import java.util.ArrayList;
import java.util.List;

public class Main {

	public static void main(String[] args) {
		
		
		
		Sport sp = new Sport();
		List<Sport> sports = new ArrayList<>();
		try {
			SureBet sr= new SureBet(new Bet(1, 2.11,4.35, 1,1),new Bet(2, 2.98,2.25, 1,2));
			System.out.println(sr.findTeams().get(0));
			System.out.println(sr.findTeams().get(1));
			System.out.println(sr.findSport());
			System.out.println(sr.getDateTime());
			/**sports = s.getSports();
			for (Sport ss: sports) {
				System.out.println(ss.getName());
				
				
				
			}**/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
