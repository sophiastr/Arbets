import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import arbets.*;

public class SearchOpportunityServlet extends HttpServlet {
	

	  public void doGet(HttpServletRequest request, HttpServletResponse response)
	      throws IOException, ServletException {
	    response.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = new PrintWriter(response.getWriter(), true);


		ArrayList<SureBet> newBets= new ArrayList<SureBet>();

		ArrayList<SureBet> bets= new ArrayList<SureBet>();
		try {
		bets = SureBetCalculator.createSureBets();
		//out.println(bets);
		String searchFilter = request.getParameter("filterSport");
		String fs = request.getParameter("flagSport");
		int flagFilterSport = 0;
		int flagFilterTeam = 0;
		if (fs != null) {
			flagFilterSport = Integer.parseInt(fs);
		}
		String ft = request.getParameter("flagTeam");
		if (ft != null) {
			flagFilterTeam = Integer.parseInt(ft);
		}
		
		if (flagFilterSport == 1){
			for (SureBet sb : bets){
				//out.println("<p>skata</p>");
				
				if (sb.findSport().equals(searchFilter)){
				//out.println("<p>skata2</p>");
				
				newBets.add(sb);
				}
			}
				
			}

		//out.println(request.getContextPath() + "/Arbets/find_opportunity.jsp");
		//} else if (flagFilterTeam == 1){
		//	for (SureBet sb : bets){
		//		if (sb.findTeams().get(0) == searchFilter || sb.findTeams().get(1) == searchFilter){
		//			newBets.add(sb);
		//		}
		//	}
		//}
		
	   
			request.setAttribute("showSureBets", newBets);
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Arbets/find_opportunity.jsp");
			requestDispatcher.forward(request, response);
	    } catch (Exception e) {
	    	request.setAttribute("message", e.getMessage());
			out.println(e.getMessage());
	    }
	   
	  } // End of doGet
	  public void doPost(HttpServletRequest request, HttpServletResponse response)
			    throws IOException, ServletException {
			  
			      doGet(request, response);

	 }
}
