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

                                                            <a class="dropdown-item" href="#">
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
    
                                                    List<Team> teams = new ArrayList<>();
    
                                                    teams = team.getTeams();
    
                                                    for (Team t: teams) {
    
                                                        %>

                                                        <li>

                                                            <a class="dropdown-item" href="#">
                                                                <%= t.getName() %>
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
                                    <div class="col-lg-4 col-md-6 ">
                                        <div class="icon-box">
                                            <!--  <div class="icon"><i class="bx bxl-dribbble"></i></div> -->
                                            <h4>0,99 % Basket</h4>
                                            <h6>Novibet: 15 jul 16:30 <b>Olympiakos</b> score: Win
                                                <p><b class="text-success"> rate: 2.04</b></p>
                                                Stoiximan: 15 jul 17:30 <b>Paok</b> score: Win
                                                <p><b class="text-success"> rate: 2.00</b></p>
                                            </h6>
                                        </div>
                                    </div>
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