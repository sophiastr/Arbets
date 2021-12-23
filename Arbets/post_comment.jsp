<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="check_authentication.jsp" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <%@ include file="header.jsp" %>
                <title>Post & Comment</title>
        </head>

        <body>
            <%@ include file="navbar.jsp" %>
                <main id="main">

                    <!-- ======= Post and Comment Section ======= -->
                    <section id="post" class="post">
                        <div class="container">
                            <div class="section-title">
                                <span>Post and Comment</span>
                                <h2>Post and Comment</h2>
                            </div>
                            <section>
                                <div class="container py-5">
                                    <div class="col-lg-6 col-mg-6 col-xl-12">
                                        <ul class="list-unstyled">
                                            <li class="d-flex justify-content-between mb-4">
                                                <img src="assets/img/team/team-3.jpg" alt="avatar" class="rounded-circle d-flex align-self-start me-3 shadow-1-strong" width="60">
                                                <div class="card">
                                                    <div class="card-header d-flex justify-content-between p-3">
                                                        <p class="fw-bold mb-0">Nikolas Giannatos</p>
                                                        <p class="text-muted small mb-0"><i class="far fa-clock"></i> 18 mins ago</p>
                                                        <a href="#">Like</a>
                                                        <a href="#">Dislike</a>
                                                        <a href="#">Answer</a>
                                                    </div>
                                                    <div class="card-body">
                                                        <p class="mb-0">
                                                            Μόλις με έκανε ban η stoiximan και δεν μπόρεσα να ποντάρω τα απαραίτητα χρήματα στο άλλο αποτέλεσμα! Μπορεί να μου προτείνει κάποιος έναν τρόπο για να μην χάσω τα χρήματα μου;
                                                        </p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="d-flex justify-content-between mb-4">
                                                <div class="card w-100">
                                                    <div class="card-header d-flex justify-content-between p-3">
                                                        <p class="fw-bold mb-0">Anna Mastori</p>
                                                        <p class="text-muted small mb-0"><i class="far fa-clock"></i> 15 mins ago</p>
                                                        <a href="#">Like</a>
                                                        <a href="#">Dislike</a>
                                                        <a href="#">Answer</a>
                                                    </div>
                                                    <div class="card-body">
                                                        <p class="mb-0">
                                                            Καλησπέρα και εμένα μου έχει συμβεί αυτό αλλά ευτυχώς συνέβη το αποτέλεσμα που είχα ποντάρει χρήματα. Ήμουν πολύ τυχερή! Ελπίζω να συμβεί το ίδιο και σε εσένα. Σαν συμβουλή σου προτείνω να στρογυλλοποιείς τα πονταρίσματα.
                                                        </p>
                                                    </div>
                                                </div>
                                                <img src="assets/img/team/team-2.jpg" alt="avatar" class="rounded-circle d-flex align-self-start ms-3 shadow-1-strong" width="60">
                                            </li>
                                            <li class="d-flex justify-content-between mb-4">
                                                <img src="assets/img/team/team-3.jpg" alt="avatar" class="rounded-circle d-flex align-self-start me-3 shadow-1-strong" width="60">
                                                <div class="card">
                                                    <div class="card-header d-flex justify-content-between p-3">
                                                        <p class="fw-bold mb-0">Nikolas Giannatos</p>
                                                        <p class="text-muted small mb-0"><i class="far fa-clock"></i> 10 mins ago</p>
                                                        <a href="#">Like</a>
                                                        <a href="#">Dislike</a>
                                                        <a href="#">Answer</a>

                                                    </div>
                                                    <div class="card-body">
                                                        <p class="mb-0">
                                                            Μακάρι να συμβεί και σε εμένα αυτό. Υπάρχει κάποιος άλλος που να γνωρίζει ένα τρόπο ώστε να μη χάσω. Γνωρίζει κάποιος αν μπορώ να φτιάξω νέο λογαριασμό;
                                                        </p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="bg-white mb-3">
                                                <div class="form-outline">
                                                    <textarea class="form-control" id="textAreaExample2" rows="4" placeholder="Upload a message"></textarea>
                                                </div>
                                            </li>
                                            <button type="button" class="btn btn-outline-dark float-end">Upload</button>
                                        </ul>

                                    </div>

                                </div>
                            </section>
                        </div>
                    </section>


                </main>
                <!-- End #main -->
                <br>
                <br>
                <br>

                <%@ include file="footer.jsp" %>

        </body>

        </html>