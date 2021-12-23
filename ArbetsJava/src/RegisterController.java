import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import arbets.*;
import java.text.SimpleDateFormat;

public class RegisterController extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = new PrintWriter(response.getWriter(), true);

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confpassword = request.getParameter("confpassword");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("exampleInputEmail1");
        String bank = request.getParameter("bank");
        String birthday = request.getParameter("bday");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        

        String s = "";
        int counter = 0;

        if (firstname != null) {
            firstname = new String(firstname.getBytes("ISO-8859-1"), "UTF-8");
        }
        
        if (lastname != null) {
            lastname = new String(lastname.getBytes("ISO-8859-1"), "UTF-8");
        }


        if(firstname == null || firstname.length() < 3) {                  
            counter++;
            s +="&emsp;&emsp;" + counter + ". Name must be at least 3 characters long.<br>";
        }
   
        if (lastname == null || lastname.length() < 3) {   
                		
            counter++;
            s+="&emsp;&emsp;" + counter + ". Lastname must be at least 3 characters long.<br>";
        }
   
        if (username == null || username.length() < 5) {        					
            counter++;
            s +="&emsp;&emsp;"+ counter+". Username must be at least 5 characters long.<br>";
        }

        if (password == null || password.length() < 6) {        		
            counter++;
            s +="&emsp;&emsp;"+ counter+". Password must be at least 6 characters long.<br>";
        }

        if (!password.equals(confpassword)){
            counter++;
            s+="&emsp;&emsp;"+ counter + ". Password and confirm do not match.<br>";
        }

        if (bank.length() != 10) {        		
            counter++;
            s +="&emsp;&emsp;"+ counter+". Bank account must be 10 characters long.<br>";
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
                Date bday = sdf.parse(birthday); 
                User user = new User(firstname, lastname, username, password ,bday, bank, email, 0); 
                userService.register(user);  
            }catch(Exception e){
                s +="&emsp;&emsp;"+e.getMessage();
                counter++;
            }
        } else{
            
            try {
                request.setAttribute("wrong_form", s);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Arbets/register.jsp");
                requestDispatcher.forward(request, response);
            } catch (Exception e) {
                request.setAttribute("error_message", e.getMessage());
            }
        }


    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {
  
      doGet(request, response);

}
    
}