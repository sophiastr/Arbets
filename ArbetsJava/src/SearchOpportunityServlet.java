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
		HttpSession session = request.getSession();
		
		DB db = (DB) session.getAttribute("db");
		
		try {
		bets = SureBetCalculator.createSureBets();
		//out.println(bets);
		String fs = request.getParameter("flagSport");
		int flagFilterSport = 0;
		int flagFilterTeam = 0;
		String searchFilter = null;
		if (fs != null) {
			flagFilterSport = Integer.parseInt(fs);
			searchFilter = request.getParameter("filterSport");
		}
		String ft = request.getParameter("flagTeam");
		if (ft != null) {
			flagFilterTeam = Integer.parseInt(ft);
			searchFilter = request.getParameter("filterTeam");
		}
		
		if (flagFilterSport == 1){
			for (SureBet sb : bets){
				if (sb.findSport(db).equals(searchFilter)){
					newBets.add(sb);
				}
			}
				
			}
		if (flagFilterTeam == 1){
			for (SureBet sb : bets){
				//out.println(searchFilter);
				if (sb.findTeams(db).get(0).equals(searchFilter) || sb.findTeams(db).get(1).equals(searchFilter)){
					newBets.add(sb);
				}
			}
		}
		if ((flagFilterTeam == 0) & (flagFilterSport == 0)) {
			for (SureBet sb : bets){
				newBets.add(sb);
				}
		}
		
	   
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
