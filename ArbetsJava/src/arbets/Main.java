package arbets;
import java.sql.Timestamp;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Main {

	public static void main(String[] args) {
		try {
			
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			List<Post> pt=Post.getPosts();
			
			List<Answer> ans=Answer.getAnswersOfPost(pt.get(0));
			for(Answer an:ans) {
				System.out.println(an);
			}
			
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/**
		Sport sp = new Sport();
		List<Sport> sports = new ArrayList<>();
		try {
			SureBet sr= new SureBet(new Bet(1, 2.11,4.35, 1,1),new Bet(2, 2.98,2.25, 1,2));
			System.out.println(sr.findTeams().get(0));
			System.out.println(sr.findTeams().get(1));
			System.out.println(sr.findSport());
			System.out.println(sr.getDateTime());
			sports = s.getSports();
			for (Sport ss: sports) {
				System.out.println(ss.getName());
				
				
				
			/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}**/
		
	}

}
