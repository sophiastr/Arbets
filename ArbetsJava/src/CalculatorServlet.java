import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 * A short Description here
 *
 * @author your name here
 *
 */
public class CalculatorServlet extends HttpServlet {

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

    String odd1 = request.getParameter("odd1");
    String odd2 = request.getParameter("odd2");
    String am = request.getParameter("amount");
    float od1 = 0;
    float od2 = 0;
    float amount = 0;
    if (odd1 != null) {
      od1 = Float.parseFloat(odd1);
    }
    if (odd2 != null) {
      od2 = Float.parseFloat(odd2);
    }
    if (am != null) {
      amount = Float.parseFloat(am);
    }
    float skata = od1 + od2;
    String me = Float.toString(skata);
    try {
        request.setAttribute("apotelesma", me);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Arbets/learn.jsp");
			requestDispatcher.forward(request, response);
    } catch (Exception e) {
      request.setAttribute("message", e.getMessage());
    }
  } // End of doGet
  public void doPost(HttpServletRequest request, HttpServletResponse response)
			    throws IOException, ServletException {
			  
			      doGet(request, response);

	 }
}// End of class