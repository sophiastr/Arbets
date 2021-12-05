package arbets;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class SearchOpportunityServlet extends HttpServlet {
	

	  public void doGet(HttpServletRequest request, HttpServletResponse response)
	      throws IOException, ServletException {
	    response.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = new PrintWriter(response.getWriter(), true);


		ArrayList<SureBet> newBets= new ArrayList<SureBet>();

		ArrayList<SureBet> bets= new ArrayList<SureBet>();
		bets = SureBetCalculator.createSureBets();
		String searchFilter = request.getParameter("filter");
		String flagFilterSport = request.getParameter("flagSport");
		String flagFilterTeam = request.getParameter("flagTeam");


		if (flagFilterSport == "1" ){
			for (SureBet sb : bets){
				if (sb.findSport() == searchFilter){
					newBets.add(sb);
				}
			}
		} else if (flagFilterTeam == "1"){
			for (SureBet sb : bets){
				if (sb.findTeams().get(0) == searchFilter || sb.findTeams().get(1) == searchFilter){
					newBets.add(sb);
				}
			}
		}

		request.setAttribute("showSureBets",newBets);
		request.getRequestDispatcher("find_opportunity.jsp").forward(request, response); 
	    try {
	      
	    } catch (Exception e) {
	    	request.setAttribute("message", e.getMessage());
	    	
	    }
	    if (request.getAttribute("message") == null) {
	    	
	    }
	  } // End of doGet
	  public void doPost(HttpServletRequest request, HttpServletResponse response)
			    throws IOException, ServletException {
			  
			      doGet(request, response);

	 }
	 
}
