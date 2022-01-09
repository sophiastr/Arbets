	import java.io.*;
import java.sql.Date;

import javax.servlet.*;
	import javax.servlet.http.*;
	import java.util.*;
	import arbets.*;
	import java.text.SimpleDateFormat;

	public class EditProfileServlet extends HttpServlet {
	    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

	        response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = new PrintWriter(response.getWriter(), true);

	        String id = request.getParameter("user_id");
	        int userid = Integer.parseInt(id);
	        String oldpassword = request.getParameter("oldpassword");
            
            String username = request.getParameter("inputUsername");
	        String email = request.getParameter("inputEmail");
	        String bank = request.getParameter("bank");
	        String birthday = request.getParameter("bday");
            String curpassword = request.getParameter("curpassword");
	        String newpassword = request.getParameter("newpassword");
	        
	        
	        out.print(oldpassword);
	        out.print(curpassword);
	        
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	        String s = "";
	        int counter = 0;
	   
	        if (username == null || username.length() < 5) {        					
	            counter++;
	            s +="&emsp;&emsp;"+ counter+". Username must be at least 5 characters long.<br>";
	        }

	        if (newpassword == null || newpassword.length() < 6) {        		
	            counter++;
	            s +="&emsp;&emsp;"+ counter+". New password must be at least 6 characters long.<br>";
	        }

	        if (!curpassword.equals(oldpassword)){
	            counter++;
	            s+="&emsp;&emsp;"+ counter + ". Old password does not match.<br>";
	        }

	        if (bank.length() != 20) {        		
	            counter++;
	            s +="&emsp;&emsp;"+ counter+". Bank account must be 20 characters long.<br>";
	        }

	        String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
	        java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
	        java.util.regex.Matcher m = p.matcher(email);
	       
	        if( !m.matches() ) {				
	            counter++;
	            s +="&emsp;&emsp;"+ counter +". Incorrect formation of email.<br>";
	        }

	        if(counter == 0 ) {

	            UserService userService = new UserService();

	            try{    
	                Date bday = (Date) sdf.parse(birthday); 
	                
	      
	                userService.editProf(userid,username, bank, email, bday,newpassword);
	                request.setAttribute("success_edit", "Edit completed successfully!");
	                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Arbets/profile.jsp");
	                requestDispatcher.forward(request, response);
	            }catch(Exception e){
	                s +="&emsp;&emsp;"+e.getMessage();
	                counter++;
	                out.println(e.getMessage());
	            }
	        } else{

	            try {
	                request.setAttribute("wrong_form", s);
	                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Arbets/edit_profile.jsp");
	                requestDispatcher.forward(request, response);
	            } catch (Exception e) {
	                request.setAttribute("error_message", e.getMessage());
	                out.println(e.getMessage());
	            }
	        }
	        
	      

	    }
	    public void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws IOException, ServletException {
	  
	      doGet(request, response);

	}
	    
}