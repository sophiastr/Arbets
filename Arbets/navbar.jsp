<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


    <!-- ======= Header ======= -->
    <header id="header" class="d-flex align-items-center">
        <div class="container d-flex align-items-center justify-content-between">

            <h1 class="logo"><a href="index.jsp">ARBETS</a></h1>

            <nav id="navbar" class="navbar">
                <ul>
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
                        <a href="../Arbets/edit_profile.jsp">Edit Profile</a>
                    </li>
                    <li class="<%=(request.getRequestURI().replace(request.getContextPath() + " / ", " ").equals("Login.jsp ")) ? "active " : " "  %>">
                        <a href="../Arbets/login.jsp">Login</a>
                    </li>


                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->
        </div>
    </header>
    <!-- End Header -->