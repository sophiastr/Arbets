<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <%@ include file="header.jsp" %>
            <title>Login</title>
    </head>

    <body>
        <%@ include file="navbar.jsp" %>

            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="login-form bg-light mt-4 p-4">
                            <%
					if (request.getAttribute("error_message") != null) {
%>
                                <div class="alert alert-danger">

                                    <%=(String)request.getAttribute("error_message") %>

                                </div>
                                <%
					}
                    
if (request.getAttribute("success_message") != null) {
%>
                                    <div class="alert alert-success">

                                        <%=(String)request.getAttribute("success_message") %>

                                    </div>
                                    <%
}
%>

                                        <form action="<%=request.getContextPath()%>/servlet/LoginController" method="POST" class="row g-3">
                                            <h4>Welcome Back</h4>
                                            <div class="col-12">
                                                <label>Username</label>
                                                <input type="text" name="username" class="form-control" placeholder="Username">
                                            </div>
                                            <div class="col-12">
                                                <label>Password</label>
                                                <input type="password" name="password" class="form-control" placeholder="Password">
                                            </div>
                                            <div class="col-12">
                                                <button type="submit" class="btn btn-dark float-end">Login</button>
                                            </div>
                                        </form>
                                        <hr class="mt-4">
                                        <div class="col-12">
                                            <p class="text-center mb-0">For registration press <a href="../Arbets/register.jsp">here</a></p>
                                        </div>
                        </div>
                    </div>
                </div>
            </div>
            <br><br>

            <%@ include file="footer.jsp" %>

    </body>

    </html>