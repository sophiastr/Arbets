<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ page import="arbets.*, java.util.*"%>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <%@ include file="header.jsp" %>

                <title>Find Opportunity</title>

        </head>

        <body>
            <%@ include file="navbar.jsp" %>

                <!-- ======= Find Opportunity Section ======= -->
                <section id="Find Opportunity" class="Find Opportunity">
                    <div class="container">
                        <div class="row">
                            <div class="row d-flex align-items-center">
                                <div class="section-title">
                                    <span>Find Opportunity</span>
                                    <h2>Find Opportunity</h2>
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown">
                Search by Filter!
              </button>
                                        <ul class="dropdown-menu">

                                            <li><a class="dropdown-item" href="#">Sport</a>
                                                <ul class="dropdown-menu dropdown-submenu">
                                                    <%

                                                Sport sport = new Sport();

                                                List<Sport> sports = new ArrayList<Sport>();

                                                sports = sport.getSports();

                                                for (Sport sp: sports) {

                                                    %>

                                                        <li>

                                                            <a class="dropdown-item" href="<%=request.getContextPath()%>/servlet/SearchOpportunityServlet?filterSport=<%= sp.getName()%>&flagSport=1">
                                                                <%= sp.getName() %>
                                                            </a>

                                                        </li>

                                                        <%

                                          }

                                                      %>
                                                </ul>
                                            </li>
                                            <li><a class="dropdown-item" href="#">Team</a>
                                                <ul class="dropdown-menu dropdown-submenu">
                                                    <%

                                                    Team team = new Team();
    
                                                    List<String> teams = new ArrayList<String>();
    
                                                    teams = team.getTeams();
    
                                                    for (String t: teams) {
    
                                                        %>

                                                        <li>

                                                            <a class="dropdown-item" href="<%=request.getContextPath()%>/servlet/SearchOpportunityServlet?filterTeam=<%= t%>&flagTeam=1">
                                                                <%= t %>
                                                            </a>

                                                        </li>

                                                        <%
    
                                                    }
    
                                                    %>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row">



                                <%

                                
                                if (request.getAttribute("showSureBets") == null){

                                
                                   ArrayList<SureBet> bets= new ArrayList<SureBet>();
                                    bets = SureBetCalculator.createSureBets();   
                                    for (SureBet sb : bets){
                                        out.println(sb);
                                    }
                                } else {
                                    ArrayList<SureBet> newBets= (ArrayList<SureBet>) request.getAttribute("showSureBets");
                                        for (SureBet sb : newBets){
                                            out.println(sb);
                                        } 
                                }
                                    %>


                                  

                                        <div class="col-lg-4 col-md-6 ">
                                            <div class="icon-box">
                                                <h4>0,97 % Volley</h4>
                                                <h6>Stoiximan: 13 jul 15:00 <b>Olympiakos</b> score: Lose
                                                    <p><b class="text-success"> rate: 6.10</b></p>
                                                    Novibet: 13 jul 15:00 <b>Panathinaikos</b> score: Lose
                                                    <p><b class="text-success"> rate: 1.21</b></p>
                                                </h6>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 ">
                                            <div class="icon-box">
                                                <h4>0,94 % Basket</h4>
                                                <h6> Novibet: 14 jul 20:00 <b>Olympiakos</b> score: Lose
                                                    <p><b class="text-success"> rate: 1.65</b></p>
                                                    Stoiximan: 14 jul 19:00 <b>Paok</b> score: Lose
                                                    <p><b class="text-success"> rate: 2.60</b></p>
                                                </h6>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
                                            <div class="icon-box">
                                                <h4>0,93 % Volley</h4>
                                                <h6> Stoiximan: 13 jul 18:00 <b>Olympiakos</b> score: Win
                                                    <p><b class="text-success"> rate: 2.74</b></p>
                                                    Novibet: 13 jul 18:00 <b>Paok</b> score: Win
                                                    <p><b class="text-success"> rate: 1.61</b></p>
                                                </h6>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
                                            <div class="icon-box">
                                                <h4>0,92 % Basket</h4>
                                                <h6>Novibet: 13 jul 14:00 <b>Olympiakos</b> score: Lose
                                                    <p><b class="text-success"> rate: 3.55</b></p>
                                                    Stoiximan: 13 jul 14:00 <b>Panathinaikos</b> score: Lose
                                                    <p><b class="text-success"> rate: 1.41</b></p>
                                                </h6>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
                                            <div class="icon-box">
                                                <h4>0,88 % Volley</h4>
                                                <h6>Novibet: 13 jul 10:00 <b>Panathinaikos</b> score: Win
                                                    <p><b class="text-success"> rate: 1,63</b></p>
                                                    Stoiximan: 13 jul 10:00 <b>Paok</b> score: Win
                                                    <p><b class="text-success"> rate: 2,65</b></p>
                                                </h6>
                                            </div>
                                        </div>
                                    </div>
                                    <center> <button type="button" class="btn btn-secondary">Load more...</button></center>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- End Find Opportunity Section -->
                <br>
                <br>
                <br>
                <%@ include file="footer.jsp" %>
        </body>

        </html>