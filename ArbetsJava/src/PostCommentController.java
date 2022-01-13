

	import arbets.Answer;
import arbets.Post;
import arbets.User;

import java.io.IOException;
	import java.io.PrintWriter;
	import java.util.List;
	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

	public class PostCommentController  extends HttpServlet{
	  public void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws IOException, ServletException
	  {
	    response.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = new PrintWriter(response.getWriter(), true);
	    
	    String upload = request.getParameter("upload");
	    String deleteAns = request.getParameter("deleteAns");
	    String deletePost = request.getParameter("deletePost");
	    String sol = request.getParameter("solution");
	    String answer = request.getParameter("answer");
	    String upvote = request.getParameter("upvote");
	    String downvote = request.getParameter("downvote");
	    String postId =request.getParameter("postId");
	    String answerId =request.getParameter("answerId");
	    HttpSession session = request.getSession();
		User curUser = (User) session.getAttribute("authentication");
		
	    try
	    {
	    	if (curUser == null) {
				 RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Arbets/login.jsp");
			     requestDispatcher.forward(request, response);
			}
	    	int userid = curUser.getId();
	     
	      if (upload != null)
	      {
	        String text = request.getParameter("text");
	        
	        text = new String(text.getBytes("ISO-8859-1"), "UTF-8");
	        
	        
	        Post.createPost(text, userid);
	      }
	      if (sol != null)
	      {
	      
	        
	        int id = Integer.valueOf(answerId).intValue();
	        Answer.setSolution(id);
	      }
	      if (answer != null)
	      {
	        String text = request.getParameter("text");
	        
	        text = new String(text.getBytes("ISO-8859-1"), "UTF-8");
	        
	        
	        int id = Integer.valueOf(postId).intValue();
	       Answer.createAnswer(text, userid, id);
	      }
	      
	      if (upvote!=null) {
	    	
		        if (postId!=null) {
		        int id = Integer.valueOf(postId).intValue();
		        Post.upvote(id);
		        }else {
		        	 int id = Integer.valueOf(answerId).intValue();
				     Answer.upvote(id);
		        	
		        }
	      }
	      
	      if (downvote!=null) {
		    	
		        if (postId!=null) {
		        int id = Integer.valueOf(postId).intValue();
		        Post.downvote(id);
		        }else {
		        	 int id = Integer.valueOf(answerId).intValue();
				     Answer.downvote(id);
		        	
		        }
	      }
	      
	      if (deleteAns != null) {
		    	
	    	  int id = Integer.valueOf(answerId).intValue();
	    	  Answer.deleteAns(id);
		        
	      }
	      
	      if (deletePost != null) {
		    	
	    	  int id = Integer.valueOf(postId).intValue();
	    	  Post.deletePost(id);
		        
	      }
	      
	      
	      
	      
	      
	      RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Arbets/post_comment.jsp");
	      requestDispatcher.forward(request, response);
	    }
	    catch (Exception e)
	    {
	      request.setAttribute("message", e.getMessage());
	      out.println(e.getMessage());
	    }
	  }
	  
	  public void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws IOException, ServletException
	  {
	    doGet(request, response);
	  }
	}

