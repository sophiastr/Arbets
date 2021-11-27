<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                            <div class="col-lg-6 col-md-6 d-flex align-items-center" data-aos="zoom-in">

                                <div class="member">
                                    <img src="assets/img/team/team-2.jpg" alt="">

                                    <h4>Anna Mastori</h4>
                                    <span>My account</span>
                                    <b>Points: </b>200
                                    <br>
                                    <br>

                                    <form action="">

                                        <div class="row g-3 ">
                                            <div class="col-3" style="text-align: left;">
                                                <label for="inputEmail" class="col-form-label" style="text-align: left;">E-mail</label>
                                            </div>
                                            <div class="col-7">
                                                <input type="email" id="inputEmail" class="form-control" aria-describedby="emailHelp">
                                            </div>
                                        </div>
                                        <br>

                                        <div class="row g-3 ">
                                            <div class="col-3" style="text-align: left;">
                                                <label for="inputUsername" class="col-form-label">Username</label>
                                            </div>
                                            <div class="col-7">
                                                <input type="text" id="inputUsername" class="form-control" aria-describedby="username">
                                            </div>
                                        </div>

                                        <br>

                                        <div class="row g-3 ">
                                            <div class="col-3" style="text-align: left;">
                                                <label for="bday" class="col-form-label">Date of Birth</label>
                                            </div>
                                            <div class="col-7">
                                                <input type="date" id="bday" class="form-control" aria-describedby="Birthday">
                                            </div>
                                        </div>
                                        <br>

                                        <div class="row g-3 ">
                                            <div class="col-3" style="text-align: left;">
                                                <label for="bank" class="col-form-label">Bank account</label>
                                            </div>
                                            <div class="col-7">
                                                <input type="text" id="bank" class="form-control" aria-describedby="Bank">
                                            </div>
                                        </div>
                                        <br>


                                        <div class="row g-3 ">
                                            <div class="col-3" style="text-align: left;">
                                                <label for="password" class="col-form-label">Current Password</label>
                                            </div>
                                            <div class="col-7">
                                                <input type="password" id="password" class="form-control" aria-describedby="Bank">
                                            </div>
                                        </div>

                                        <br>

                                        <div class="row g-3 ">
                                            <div class="col-3" style="text-align: left;">
                                                <label for="confpassword" class="col-form-label">New Password</label>
                                            </div>
                                            <div class="col-7">
                                                <input type="password" id="confpassword" class="form-control" aria-describedby="Bank">
                                            </div>
                                        </div>
                                        <br>
                                        <br>

                                        <button type="submit" class="btn btn-dark"><a href="profile.jsp">Done</a></button>


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