<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ page import="arbets.*, java.util.*"%>
        <%
    User regUser = (User)session.getAttribute("authentication");
%>
            <!-- ======= Header ======= -->
            <header id="header" class="d-flex align-items-center">
                <div class="container d-flex align-items-center justify-content-between">

                    <h1 class="logo"><a href="../Arbets/index.jsp">ARBETS</a></h1>

                    <nav id="navbar" class="navbar">
                        <ul>
                            <%
                                        if (session.getAttribute("authentication") == null) {
                                            %>
                                <li class="<%=(request.getRequestURI().replace(request.getContextPath() + " / ", " ").equals("index.jsp ")) ? "active " : " "  %>">
                                    <a href="../Arbets/index.jsp">Home</a>
                                </li>
                                <li class="<%=(request.getRequestURI().replace(request.getContextPath() + " / ", " ").equals("learn.jsp ")) ? "active " : " "  %>">
                                    <a href="../Arbets/learn.jsp">Learn</a>
                                </li>
                                <li class="<%=(request.getRequestURI().replace(request.getContextPath() + " / ", " ").equals("Login.jsp ")) ? "active " : " "  %>">
                                    <a href="../Arbets/login.jsp">Login</a>
                                </li>
                                <li class="<%=(request.getRequestURI().replace(request.getContextPath() + " / ", " ").equals("info.jsp ")) ? "active " : " "  %>">
                                    <a href="../Arbets/info.jsp">Info</a>
                                </li>

                                <% }else { %>
                                    <li class="<%=(request.getRequestURI().replace(request.getContextPath() + " / ", " ").equals("index.jsp ")) ? "active " : " "  %>">
                                        <a href="../Arbets/index.jsp">Home</a>
                                    </li>
                                    <li class="<%=(request.getRequestURI().replace(request.getContextPath() + " / ", " ").equals("learn.jsp ")) ? "active " : " "  %>">
                                        <a href="../Arbets/learn.jsp">Learn</a>
                                    </li>
                                    <li class="<%=(request.getRequestURI().replace(request.getContextPath() + " / ", " ").equals("find_opportunity.jsp ")) ? "active " : " "  %>">
                                        <a href="../Arbets/find_opportunity.jsp">Find Opportunity</a>
                                    </li>
                                    <li class="<%=(request.getRequestURI().replace(request.getContextPath() + " / ", " ").equals("edit_profile.jsp ")) ? "active " : " "  %>">
                                        <a href="../Arbets/post_comment.jsp">Post & Comment</a>
                                    </li>
                                    <li class="<%=(request.getRequestURI().replace(request.getContextPath() + " / ", " ").equals("find_opportunity.jsp ")) ? "active " : " "  %>">
                                        <a href="../Arbets/profile.jsp">Profile</a>
                                    </li>
                                    <li class="<%=(request.getRequestURI().replace(request.getContextPath() + " / ", " ").equals("info.jsp ")) ? "active " : " "  %>">
                                        <a href="../Arbets/info.jsp">Info</a>
                                    </li>
                                    <li class="<%=(request.getRequestURI().replace(request.getContextPath() + " / ", " ").equals("Login.jsp ")) ? "active " : " "  %>">
                                        <a href="../Arbets/logout.jsp">Logout</a>
                                    </li>

                                    <%}%>
                        </ul>
                        <i class="bi bi-list mobile-nav-toggle"></i>
                    </nav>
                    <!-- .navbar -->
                </div>
            </header>
            <!-- End Header -->