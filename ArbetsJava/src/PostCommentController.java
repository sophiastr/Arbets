

	import arbets.Answer;
import arbets.Post;
	import java.io.IOException;
	import java.io.PrintWriter;
	import java.util.List;
	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

	public class PostCommentController  extends HttpServlet{
	  public void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws IOException, ServletException
	  {
	    response.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = new PrintWriter(response.getWriter(), true);
	    
	    String upload = request.getParameter("upload");
	    String upvote = request.getParameter("upvote");
	    String downvote = request.getParameter("downvote");
	    String postId =request.getParameter("postId");
	    String answerId =request.getParameter("answerId");
	    try
	    {
	      List<Post> posts = Post.getPosts();
	      if (upload != null)
	      {
	        String text = request.getParameter("text");
	        
	        text = new String(text.getBytes("ISO-8859-1"), "UTF-8");
	        
	        int userId = Integer.valueOf("1").intValue();
	        Post.createPost(text, userId);
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

