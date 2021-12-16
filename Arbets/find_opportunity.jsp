<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ page import="arbets.*, java.util.*"%>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <%@ include file="header.jsp" %>
            <script src=
"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    </script>
  
    <script src=
"https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js">
    </script>
  
    <style>
        h1 {
            color: #3C8E3D;
        }
  
        .block {
            display: none;
            font-size: 20px;
        }
  
        #load {
            font-size: 20px;
            color: green;
        }
    </style>
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

                                
                                if (request.getAttribute("showSureBets") != null){
                                    ArrayList<SureBet> newBets= (ArrayList<SureBet>) request.getAttribute("showSureBets");
                                        for (SureBet sb : newBets){
                                           %>
                                           <div class="col-lg-4 col-md-6 ">
                                            <div class="icon-box">
                                                <h4>0,94 % <%= sb.findSport() %></h4>
                                                <h6> <%= sb.getBet1().getBookmakerName() %>: <%= sb.getDateTime() %> <b><%= sb.getHomeTeamBet1Name() %></b> score: Win
                                                    <p><b class="text-success"> rate: <%= sb.getBet1().getHomeTeamRate() %></b></p>
                                                    <%= sb.getBet2().getBookmakerName() %>: <%= sb.getDateTime() %> <b><%= sb.getVisitingTeamBet2Name() %></b> score: Lose
                                                    <p><b class="text-success"> rate: <%= sb.getBet2().getVisitingTeamRate() %></b></p>
                                                </h6>
                                            </div>
                                        </div>
                                        <br>
                                        <%
                                    }
                                } else {
                                    %>
                                    <jsp:forward page= "/servlet/SearchOpportunityServlet"/>
                                    <%
                                    ArrayList<SureBet> newBets= (ArrayList<SureBet>) request.getAttribute("showSureBets");
                                        for (SureBet sb : newBets){
                                           %>
                                           <div class="col-lg-4 col-md-6 ">
                                            <div class="icon-box">
                                                <h4>0,94 % <%= sb.findSport() %></h4>
                                                <h6> <%= sb.getBet1().getBookmakerName() %>: <%= sb.getDateTime() %> <b><%= sb.getHomeTeamBet1Name() %></b> score: Win
                                                    <p><b class="text-success"> rate: <%= sb.getBet1().getHomeTeamRate() %></b></p>
                                                    <%= sb.getBet2().getBookmakerName() %>: <%= sb.getDateTime() %> <b><%= sb.getVisitingTeamBet2Name() %></b> score: Lose
                                                    <p><b class="text-success"> rate: <%= sb.getBet2().getVisitingTeamRate() %></b></p>
                                                </h6>
                                            </div>
                                        </div>
                                        <br>
                                        <%
                                        }
                                    }
                                    %>
                                        <div id="load"> <b> Load More </b></div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- End Find Opportunity Section -->
                <br>
                <br>
                <br>
                <script>
                    $(document).ready(function () {
                        $(".block").slice(0, 3).show();
                        if ($(".block:hidden").length != 0) {
                            $("#load").show();
                        }
                        $("#load").on("click", function (e) {
                            e.preventDefault();
                            $(".block:hidden").slice(0, 1).slideDown();
                            if ($(".block:hidden").length == 0) {
                                $("#load").text("No More to view")
                                    .fadOut("slow");
                            }
                        });
                    })
                </script>
                <%@ include file="footer.jsp" %>
        </body>

        </html>


