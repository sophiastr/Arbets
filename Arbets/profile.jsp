<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="check_authentication.jsp" %>
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



                                        <b>E-mail: </b>mastori@gmail.com
                                        <br>
                                        <b>Username: </b>mastori_anna
                                        <br>
                                        <b>Date of Birth: </b>2001-02-04
                                        <br>

                                        <b>Bank account: </b>GR908567832563789999
                                        <br>
                                        <br>

                                        <button type="button" class="btn btn-dark"><a href="edit_profile.jsp">Edit</a></button>
                                    </div>

                                </div>
                            </center>

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