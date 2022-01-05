import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import arbets.*;

public class PostCommentController extends HttpServlet {
	 public void doGet(HttpServletRequest request, HttpServletResponse response)
		      throws IOException, ServletException {
		    response.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = new PrintWriter(response.getWriter(), true);

			ArrayList<Post> posts= new ArrayList<Post>();

			ArrayList<Answer> answers= new ArrayList<Answer>();
			try {
			posts = Post.getPosts();
			//out.println(bets);
			
			
		   
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
