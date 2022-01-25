<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>

        <%@ include file="header.jsp" %>
            <title>Welcome</title>
    </head>

    <body>
        <%@ include file="navbar.jsp" %>
        <% User curUser = (User)session.getAttribute("authentication");%>
            <!-- ======= Hero Section ======= -->
            <section id="hero" class="d-flex align-items-center">
                <div class="container position-relative" data-aos="fade-up" data-aos-delay="500">
                    <h1>Welcome to Arbets</h1>
                    <h2>The best advisor for sure bets</h2>
                    <% if (curUser==null){%>
                        <a href="../Arbets/login.jsp" class="btn-get-started scrollto">Login</a>
                   <% }%>
                </div>
                <br><br><br><br>
            </section>
            <!-- End Hero -->

            <%@ include file="footer.jsp" %>
    </body>

    </html>