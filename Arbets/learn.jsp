<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>

    <!DOCTYPE html>

    <html lang="en">



    <head>

        <%@ include file="header.jsp" %>

            <title>Learn</title>

    </head>



    <body>

        <%@ include file="navbar.jsp" %>



            <!-- ======= Learn Section ======= -->

            <section id="learn" class="learn">

                <div class="container" style="vertical-align: middle;">

                    <div class="row">

                        <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" style="text-align: center; vertical-align: middle;">

                            <img src="../Arbets/assets/img/arb_pic.jpg" class="img-fluid" alt="pic arbitrage">

                        </div>

                        <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content" data-aos="fade-right">

                            <h3>Learn</h3>

                            <p class="fst-italic">

                                Betting arbitrage ("sure bets", sports arbitrage) is an example of arbitrage arising on betting markets due to either bookmakers' differing opinions on event outcomes or errors. When conditions allow, by placing one bet per each outcome with different
                                betting companies, the bettor can make a profit regardless of the outcome.

                                <br> Put simply: with arbing, you bet on one site at a high price and you bet against that outcome on an exchange at a lower price.

                            </p>

                            <h4>Here are some tips to help you start abring</h4>

                            <ul>

                                <li><i class="bi bi-check-circle"></i> Look for arbitrage opportunities in popular leagues, matches and markets.</li>

                                <li><i class="bi bi-check-circle"></i> Maintain several accounts on the platforms.</li>

                                <li><i class="bi bi-check-circle"></i> Check the bookmakers well in terms of how trustworthy they are.</li>

                                <li><i class="bi bi-check-circle"></i> "Sacrifice" few euros so as not to be exposed.</li>

                            </ul>

                            <p>

                                Proper arbitrage requires registration on many platforms and especially on those with the smallest rake. <br> Our online surebet calculator will greatly facilitate your work, allowing you to instantly find and automatically
                                calculate surebets at any bookmaker.

                            </p>

                        </div>

                    </div>

                </div>

            </section>

            <!-- End Learn Section -->



            <!-- ======= calculation ======= -->

            <section id="calculation" class="calculation">

                <div class="container" data-aos="zoom-in">

                    <div class="text-center">

                        <h3>Surbet Calculator</h3>

                        <p>Save your time and efforts by using our free sure bet calculator! A calculator that helps you to calculate the amount of money to bet and profit for a 2 way mutually exclusive outcome arbitrage.
                        In more detail, you type the odds of a particular betting company to win one team, then you type the odds of a particular betting company for the defeat of the same team and finally you type the money you have for betting. 
                        The calculator shows how much money you have to bet on each result, in order to win in each case. </p>



                    </div>

                </div>

            </section>

            <section id="calculator" class="calculator">

                <div class="container">

                    <div class="row">

                        <center>

                            <div class="col-lg-10" data-aos="fade-up">

                                <form action="<%=request.getContextPath()%>/servlet/CalculatorServlet" method="POST" class="row g-3">

                                    <h4>Calculator</h4>

                                    <div class="col-12">

                                        <label>Rate Of First Bet </label>

                                        <input type="number" step="any" name="rate1" required class="form-control" placeholder="rate1">
                                    </div>

                                    <div class="col-12">

                                        <label>Rate Of Second Bet </label>

                                        <input type="number" step="any" name="rate2" required class="form-control" max="500" placeholder="rate2">

                                    </div>

                                    <div class="col-12">

                                        <label>Amount</label>

                                        <input type="number" step="any" name="amount" required class="form-control" max="500" placeholder="amount">

                                    </div>

                                    <div class="col-12">

                                        <button type="submit" class="btn btn-dark float-end">Calculate</button>

                                    </div>

                                    <div class="col-12">

                                    </div>

                                </form>

                                <% if (request.getAttribute("apotelesma") != null) {

                                        %>

                                        <div class="alert alert-light" role="alert">
                                            <%=request.getAttribute("apotelesma") %>
                                          </div>

                                    <%
                                    } %>



                                            <br>

                                            <br>

                            </div>

                    </div>

                    </center>

                </div>

            </section>

            <!-- End calculation Section -->



            <%@ include file="footer.jsp" %>



    </body>



    </html>