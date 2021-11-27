<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                            <img src="assets/img/arb_pic.jpg" class="img-fluid" alt="pic arbitrage">
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
                        <p>Save your time and efforts by using our free sure bet calculator! A calculator that helps you to calculate the amount of money to bet and profit for a 2 way mutually exclusive outcome arbitrage </p>

                    </div>
                </div>
            </section>
            <!-- End calculation Section -->

            <!-- ======= calculator ======= -->
            <section id="calculator" class="calculator">
                <div class="container">
                    <div class="row">
                        <center>
                            <div class="col-lg-10" data-aos="fade-up">
                                <table class="table caption-top">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Odds</th>
                                            <th scope="col">Bet</th>
                                            <th scope="col">Profit</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">W1</th>
                                            <td>
                                                <div class="col-auto">
                                                    <label for="inputOdd1" class="visually-hidden">Odd1</label>
                                                    <input type="text" class="form-control" id="inputOdd1" placeholder="Odd1">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="col-auto">
                                                    <label for="inputBet1" class="visually-hidden">Bet1</label>
                                                    <input type="text" class="form-control" id="inputBet1" placeholder="Bet1">
                                                </div>
                                            </td>
                                            <td>___</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">W2</th>
                                            <td>
                                                <div class="col-auto">
                                                    <label for="inputOdd2" class="visually-hidden">Odd2</label>
                                                    <input type="text" class="form-control" id="inputOdd2" placeholder="Odd2">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="col-auto">
                                                    <label for="inputPassword2" class="visually-hidden">Bet2</label>
                                                    <input type="text" class="form-control" id="inputBet2" placeholder="Bet2">
                                                </div>
                                            </td>
                                            <td>___</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"></th>
                                            <td style="text-align: right;"><b>Amount:</b></td>
                                            <td>
                                                <div class="col-auto">
                                                    <label for="inputAmount" class="visually-hidden">amount</label>
                                                    <input type="text" class="form-control" id="inputAmount" placeholder="amount">
                                                </div>
                                            </td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                        </center>
                    </div>
                </div>
            </section>
            <!-- End caclculator Section -->
            <br>
            <br>
            <br>
            <%@ include file="footer.jsp" %>

    </body>

    </html>