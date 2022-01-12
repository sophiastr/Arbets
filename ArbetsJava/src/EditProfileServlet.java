import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import arbets.*;

public class EditProfileServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = new PrintWriter(response.getWriter(), true);

		HttpSession session = request.getSession();
		User curUser = (User) session.getAttribute("authentication");

		int userid = curUser.getId();
		String oldpassword = curUser.getPassword();

		String username = (String) request.getParameter("inputUsername");
		String email = (String) request.getParameter("inputEmail");
		String bank = (String) request.getParameter("bank");
		String curpassword = (String) request.getParameter("curpassword");
		String newpassword = (String) request.getParameter("newpassword");

		String s = "";
		int counter = 0;

		if (username == null) {
			username = curUser.getUsername();
		} else if (username.length() < 5) {
			out.print(username.length());
			counter++;
			s += "&emsp;&emsp;" + username + ". Username must"+ username + "be at least 5 characters long.<br>";
		}

		if (curpassword == null || newpassword == null) {
			newpassword = curUser.getPassword();
		} else {
			if (newpassword.length() < 6) {
				counter++;
				s += "&emsp;&emsp;" + counter + ". New password must be at least 6 characters long.<br>";
			}
			if (!curpassword.equals(oldpassword)) {
				counter++;
				s += "&emsp;&emsp;" + counter + ". Old password does not match.<br>";
			}
		}

		if (bank == null) {
			bank = curUser.getBankAccount();
		} else if (bank.length() != 20) {
			counter++;
			s += "&emsp;&emsp;" + counter + ". Bank account must be 20 characters long.<br>";
		}

		String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
		java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
		java.util.regex.Matcher m = p.matcher(email);

		if (email == null) {
			email = curUser.getEmail();
		} else if (!m.matches()) {
			counter++;
			s += "&emsp;&emsp;" + counter + ". Incorrect formation of email.<br>";
		}

		if (counter == 0) {
			UserService userService = new UserService();
			try {
				userService.editProf(userid, username, bank, email, newpassword);
				request.setAttribute("success_edit", "Edit completed successfully!");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Arbets/profile.jsp");
				requestDispatcher.forward(request, response);
			} catch (Exception e) {
				s += "&emsp;&emsp;" + e.getMessage();
				counter++;
				out.println(e.getMessage());
			}
		} else {
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

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		doGet(request, response);

	}

}