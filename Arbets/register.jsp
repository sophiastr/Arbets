<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

                    <div class="login-form bg-light mt-4 p-4">
                        <center>
                            <h4><b>Registration Form</b></h4>
                        </center>
                        <form>

                            <div class="row">
                                <div class="col">
                                    <div class="">
                                        <label for="fistname" class="form-label">Firstname</label>
                                        <input type="text" class="form-control" id="firstname" aria-describedby="firstname">
                                    </div>

                                    <div class="">
                                        <label for="lastname" class="form-label">Lastname</label>
                                        <input type="text" class="form-control" id="lastname" aria-describedby="lastname">
                                    </div>
                                    <div class="">
                                        <label for="username" class="form-label">Username</label>
                                        <input type="text" class="form-control" id="username" aria-describedby="username">
                                    </div>

                                    <div class="">
                                        <label for="password" class="form-label">Password</label>
                                        <input type="password" class="form-control" id="password">
                                    </div>

                                </div>

                                <div class="col">
                                    <div class="">
                                        <label for="confpassword" class="form-label">Confirm Password</label>
                                        <input type="password" class="form-control" id="confpassword">
                                    </div>
                                    <div class="">
                                        <label for="bday" class="form-label">Birthday</label>
                                        <input type="date" class="form-control" id="bday" aria-describedby="bday">
                                    </div>
                                    <div class="">
                                        <label for="bank" class="form-label">Bank Account</label>
                                        <input type="text" class="form-control" id="bank" aria-describedby="bank">
                                    </div>

                                    <div class="">
                                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    </div>
                                    <br>
                                </div>
                                <div class="row">
                                    <center>
                                        <div class="col-3">
                                            <button type="submit" class="btn btn-dark">Submit </button>

                                        </div>
                                    </center>
                                </div>
                        </form>


                        <hr class="mt-4">
                        <div class="col-12">
                            <p class="text-center mb-0">For login press <a href="login.jsp">here</a></p>
                        </div>
                        </div>

                    </div>

                    <br><br><br><br><br>

                </div>
                <br><br>

                <%@ include file="footer.jsp" %>
    </body>

    </html>