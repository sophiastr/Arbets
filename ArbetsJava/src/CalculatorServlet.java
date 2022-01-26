import java.io.*;

import javax.servlet.*;

import javax.servlet.http.*;

import arbets.*;
import java.lang.Math;

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

    String message = "Fill the form";

    double od1 = 0;

    double od2 = 0;

    double amount = 0;

    boolean flag = false;

    if (odd1 != null) {

      od1 = Double.parseDouble(odd1);

    } else {

      flag = true;

    }

    if (odd2 != null) {

      od2 = Double.parseDouble(odd2);

    } else {

      flag = true;

    }

    if (am != null) {

      amount = Double.parseDouble(am);

    } else {

      flag = true;

    }

    if (flag == true) {

      message = "Fill the form";

    } else {

      Bet bet1 = new Bet(-1, od1, -1, -1, -1);

        Bet bet2 = new Bet(-1, -1, od2, -1, -1);

        SureBet sb = SureBetCalculator.calculateSureBet(bet1, bet2);

        if (sb == null) {

          message = "It is not a surebet.";

        } else {

          double V1 = Math.round(amount/((sb.getPercentage()/100)* od1));

          double V2 = Math.round(amount/((sb.getPercentage()/100) * od2));

          message = "Put " + V1 + " in first bet and " + V2 + " to the second bet.";

    }

   

    }

    try {

        request.setAttribute("apotelesma", message);

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