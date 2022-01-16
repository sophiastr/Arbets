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

                                <div class="row">
                                    <center>
                                        <div class="col-md-12">
                                            <div class="col-lg-6 col-md-6 d-flex align-items-center" data-aos="zoom-in">

                                                <div class="member">
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
                                                                    <img src="assets/img/team/profile_pic.png" alt="">

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

                                                                            <div class="row ">
                                                                                <div class="col-3" style="text-align: left;">
                                                                                    <label for="inputEmail" class="col-form-label" style="text-align: left;">E-mail</label>
                                                                                </div>


                                                                                <div class="col-6 ">
                                                                                    <span id="textjs_email"><%=curUser.getEmail()%></span>
                                                                                    <span id="inputjs_email" style="display: none;"><input  type="email" name="inputEmail" class="form-control" aria-describedby="emailHelp" ></span>

                                                                                </div>
                                                                                <div class="col-1 ">
                                                                                    <button type="button" class="btn" onclick="myFunction('inputjs_email','textjs_email') "><i class="bi bi-pencil"></i></button>
                                                                                </div>





                                                                            </div>
                                                                            <br>

                                                                            <div class="row ">
                                                                                <div class="col-3" style="text-align: left;">
                                                                                    <label for="inputUsername" class="col-form-label">Username</label>
                                                                                </div>
                                                                                <div class="col-6">
                                                                                    <span id="textjs_username"><%=curUser.getUsername()%></span>
                                                                                    <span id="inputjs_username" style="display: none;"><input type="text" name="inputUsername" class="form-control" aria-describedby="username"></span>
                                                                                </div>

                                                                                <div class="col-1">
                                                                                    <button type="button" class="btn" onclick="myFunction('inputjs_username','textjs_username') "><i class="bi bi-pencil"></i></button>
                                                                                </div>


                                                                            </div>

                                                                            <br>



                                                                            <div class="row g-3 ">
                                                                                <div class="col-3" style="text-align: left;">
                                                                                    <label for="bank" class="col-form-label">Bank account</label>
                                                                                </div>
                                                                                <div class="col-6">
                                                                                    <span id="textjs_bank"><%=curUser.getBankAccount()%></span>
                                                                                    <span id="inputjs_bank" style="display: none;"><input type="text" name="bank" class="form-control" aria-describedby="Bank"></span>
                                                                                </div>
                                                                                <div class="col-1">
                                                                                    <button type="button" class="btn" onclick="myFunction('inputjs_bank','textjs_bank') "><i class="bi bi-pencil"></i></button>
                                                                                </div>


                                                                            </div>
                                                                            <br>


                                                                            <div class="row">
                                                                                <div class="col-3" style="text-align: left;">
                                                                                    <label for="password" class="col-form-label">Current Password</label>
                                                                                </div>
                                                                                <div class="col-6">
                                                                                    <span id="textjs_password">************</span>
                                                                                    <span class="inputjs_password" style="display: none;"><input type="password" name="curpassword" class="form-control" aria-describedby="Bank"></span>
                                                                                </div>
                                                                                <div class="col-1">
                                                                                    <button type="button" class="btn" onclick="myFunction2('inputjs_password','textjs_password') "><i class="bi bi-pencil"></i></button>
                                                                                </div>
                                                                            </div>

                                                                            <br>

                                                                            <div class="row g-3 ">
                                                                                <div class="col-3" style="text-align: left;">
                                                                                    <label for="confpassword" style="display: none;" class="col-form-label inputjs_password">New Password</label>
                                                                                </div>
                                                                                <div class="col-7">
                                                                                    <input type="password" name="newpassword" style="display: none;" class="form-control inputjs_password" aria-describedby="Bank">
                                                                                </div>
                                                                            </div>

                                                                            <br>
                                                                            <br>

                                                                            <button type="submit" class="btn btn-dark">Done</button>


                                                                        </form>

                                                </div>
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
                        <script>
                            function myFunction(type, text) {
                                document.getElementById(text).innerHTML = "";
                                var text = document.getElementById(type);
                                if (!text.style.display) {
                                    text.style.display = "none";
                                }
                                if (text.style.display === "none") {
                                    text.style.display = "block";
                                }
                            }

                            function myFunction2(type, text) {
                                document.getElementById(text).innerHTML = "";
                                var elements = document.getElementsByClassName(type);

                                for (var i = 0; i < elements.length; i++) {

                                    if (!elements[i].style.display) {
                                        elements[i].style.display = "none";
                                    }
                                    if (elements[i].style.display === "none") {
                                        elements[i].style.display = "block";
                                    }
                                }
                            }
                        </script>
                        <%@ include file="footer.jsp" %>

                </body>

                </html>