package arbets;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SearchOpportunityServlet extends HttpServlet {
	/**
	   * Handles HTTP GET requests.
	   *
	   * @param request
	   *            the request object
	   * @param response
	   *            the response object
	   *
	   * @throws IOException
	   *             if an input or output error is detected when the servlet
	   *             handles the GET request
	   * @throws ServletException
	   *             if the request for the GET could not be handled
	   */
	  public void doGet(HttpServletRequest request, HttpServletResponse response)
	      throws IOException, ServletException {

	    response.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = new PrintWriter(response.getWriter(), true);

	    try {
	      String searchFilter = request.getParameter("filter");
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
