import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import arbets.*;

public class LoginController extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = new PrintWriter(response.getWriter(), true);

        String username = request.getParameter("username");
        String password = request.getParameter("password");
       
        
        UserService userService = new UserService();

        User user = null;
        
        try {
            user = userService.authenticate(username, password);
            //request.setAttribute("user", user);
            HttpSession session=request.getSession(); 
            session.setAttribute("authentication", user);
            DB db = new DB();
            session.setAttribute("db", db);
            
            
        } catch (Exception e) {
            request.setAttribute("error_message", e.getMessage());
           
        }
        if (user == null) {
        	 RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Arbets/login.jsp");
        	 requestDispatcher.include(request, response);
        } else {
        	RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Arbets/find_opportunity.jsp");
       	 	requestDispatcher.include(request, response);
        }
    

    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {
  
      doGet(request, response);

}
    
}