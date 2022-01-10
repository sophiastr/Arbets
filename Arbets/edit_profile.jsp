<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="check_authentication.jsp" %>
        <%@ page import="arbets.*, java.util.*"%>

            <%
        User curUser = (User)session.getAttribute("authentication");
        %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <%@ include file="header.jsp" %>
                        <title>My profile</title>

                </head>

                <body>
                    <%@ include file="navbar.jsp" %>

                        <!-- ======= profile Section ======= -->
                        <section id="profile" class="profile">
                            <div class="container">
                                <%
                            if (request.getAttribute("wrong_form") != null) {
        %>
                                    <div class="alert alert-danger">

                                        <%=(String)request.getAttribute("wrong_form") %>

                                    </div>
                                    <%
                            }
                            %>

                                        <%
                            if (request.getAttribute("error_message") != null) {
        %>
                                            <div class="alert alert-danger">

                                                <%=(String)request.getAttribute("error_message") %>

                                            </div>
                                            <%
                            }
                            %>

                                                <div class="row">
                                                    <center>
                                                        <div class="col-lg-6 col-md-6 d-flex align-items-center" data-aos="zoom-in">

                                                            <div class="member">
                                                                <img src="assets/img/team/team-2.jpg" alt="">

                                                                <h4>
                                                                    <%=curUser.getFirstname()%>
                                                                        <%=curUser.getSurename()%>
                                                                </h4>
                                                                <span>My account</span>
                                                                <b>Points: </b>
                                                                <%=curUser.getPoints()%>
                                                                    <br>
                                                                    <br>

                                                                    <form action="<%=request.getContextPath()%>/servlet/EditProfileServlet" method="POST">

                                                                        <div class="row g-3 ">
                                                                            <div class="col-3" style="text-align: left;">
                                                                                <label for="inputEmail" class="col-form-label" style="text-align: left;">E-mail</label>
                                                                            </div>
                                                                            <div class="col-7">
                                                                                <input type="email" name="inputEmail" class="form-control" aria-describedby="emailHelp">
                                                                            </div>
                                                                        </div>
                                                                        <br>

                                                                        <div class="row g-3 ">
                                                                            <div class="col-3" style="text-align: left;">
                                                                                <label for="inputUsername" class="col-form-label">Username</label>
                                                                            </div>
                                                                            <div class="col-7">
                                                                                <input type="text" name="inputUsername" class="form-control" aria-describedby="username">
                                                                            </div>
                                                                        </div>

                                                                        <br>

                                                                        <div class="row g-3 ">
                                                                            <div class="col-3" style="text-align: left;">
                                                                                <label for="bday" class="col-form-label">Date of Birth</label>
                                                                            </div>
                                                                            <div class="col-7">
                                                                                <input type="date" name="bday" class="form-control" aria-describedby="Birthday">
                                                                            </div>
                                                                        </div>
                                                                        <br>

                                                                        <div class="row g-3 ">
                                                                            <div class="col-3" style="text-align: left;">
                                                                                <label for="bank" class="col-form-label">Bank account</label>
                                                                            </div>
                                                                            <div class="col-7">
                                                                                <input type="text" name="bank" class="form-control" aria-describedby="Bank">
                                                                            </div>
                                                                        </div>
                                                                        <br>


                                                                        <div class="row g-3 ">
                                                                            <div class="col-3" style="text-align: left;">
                                                                                <label for="password" class="col-form-label">Current Password</label>
                                                                            </div>
                                                                            <div class="col-7">
                                                                                <input type="password" name="curpassword" class="form-control" aria-describedby="Bank">
                                                                            </div>
                                                                        </div>

                                                                        <br>

                                                                        <div class="row g-3 ">
                                                                            <div class="col-3" style="text-align: left;">
                                                                                <label for="confpassword" class="col-form-label">New Password</label>
                                                                            </div>
                                                                            <div class="col-7">
                                                                                <input type="password" name="newpassword" class="form-control" aria-describedby="Bank">
                                                                            </div>
                                                                        </div>
                                                                        <br>
                                                                        <br>

                                                                        <button type="submit" class="btn btn-dark"><a href="<%=request.getContextPath()%>/servlet/EditProfileServlet?user_id=<%=curUser.getId()%>&oldpassword=<%=curUser.getPassword()%>">Done</a></button>


                                                                    </form>

                                                            </div>
                                                    </center>
                                                    </div>

                                                </div>

                            </div>


                        </section>
                        <!-- End profile Section -->
                        <br>
                        <br>
                        <br>
                        <%@ include file="footer.jsp" %>

                </body>

                </html>