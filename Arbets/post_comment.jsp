<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ include file="check_authentication.jsp" %>
    <%@ page import="java.text.SimpleDateFormat"%>
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
                                            <%
                                            List<Post> posts= Post.getPosts();
                                            for(Post post:posts){%>
                                                <li class="d-flex justify-content-between mb-4">
                                                    <img src="../Arbets/assets/img/team/team-3.jpg" alt="avatar" class="rounded-circle d-flex align-self-start me-3 shadow-1-strong" width="60">
                                                    <div class="card w-100">
                                                        <div class="card-header d-flex justify-content-between p-3">
                                                            <p class="fw-bold mb-0"><%=User.getNameByUserId(post.getUserId())%></p>
                                                            <p class="text-muted small mb-0"><i class="far fa-clock"></i> <%= new SimpleDateFormat("MM/dd/yyyy HH:mm").format(post.getDateTime())%></p>
                                                            <div><a href="<%=request.getContextPath()%>/servlet/PostCommentController?upvote=true&postId=<%=post.getPostId()%>" >Like       </a><%=post.getUpvote()%></div>
                                                            <div><a href="<%=request.getContextPath()%>/servlet/PostCommentController?downvote=true&postId=<%=post.getPostId()%>" >Dislike        </a><%=post.getDownvote()%></div>
                                                            <a href="#">Answer</a>
                                                        </div>
                                                        <div class="card-body">
                                                            <p class="mb-0">
                                                                <%=post.getText()%>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </li><%
                                                List<Answer> ans =Answer.getAnswersOfPost(post) ;
                                                    for (Answer an:ans){%>
                                                        <li class="d-flex justify-content-between mb-4">
                                                            <div class="card w-100">
                                                                <div class="card-header d-flex justify-content-between p-3">
                                                                    <p class="fw-bold mb-0"><%=User.getNameByUserId(an.getUserId())%></p>
                                                                    <p class="text-muted small mb-0"><i class="far fa-clock"></i> <%=new SimpleDateFormat("MM/dd/yyyy HH:mm").format(an.getDateTime())%></p>
                                                                    <div><a href="<%=request.getContextPath()%>/servlet/PostCommentController?upvote=true&answerId=<%=an.getAnswerId()%>">Like       </a><%=an.getUpvote()%></div>
                                                                    <div><a href="<%=request.getContextPath()%>/servlet/PostCommentController?downvote=true&answerId=<%=an.getAnswerId()%>">Dislike        </a><%=an.getDownvote()%></div>
                                                                    
                                                                </div>
                                                                <div class="card-body">
                                                                    <p class="mb-0">
                                                                        <%=an.getText()%>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                            <img src="../Arbets/assets/img/team/team-2.jpg" alt="avatar" class="rounded-circle d-flex align-self-start ms-3 shadow-1-strong" width="60">
                                                        </li>
                                                  <%  }
                                            }
                                                %>
                                            #na mhn fenete oi parametroi
                                            <%=regUser%>
                                            <form  action="<%=request.getContextPath()%>/servlet/PostCommentController?upload=true&userId=<%=regUser.getId()%>" method="POST" class="form-horizontal">
                                            <li class="bg-white mb-3">
                                                
                                                <div class="form-outline">
                                                    <textarea class="form-control" name="text" id="textAreaExample2" rows="4" placeholder="Upload a message"></textarea>
                                                </div>
                                            </li>
                                            <button type="submit" class="btn btn-outline-dark float-end">Upload</button>
                                        </form>
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