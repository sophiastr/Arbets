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
                                                        <div class="card-header d-flex justify-content-between p-3 " style="align-items: center;">
                                                            <p class="fw-bold mb-0"><%=User.getNameByUserId(post.getUserId())%></p>
                                                            <p class="text-muted small mb-0"><i class="far fa-clock"></i> <%= new SimpleDateFormat("MM/dd/yyyy HH:mm").format(post.getDateTime())%></p>
                                                            <div><a title="Like Post" href="<%=request.getContextPath()%>/servlet/PostCommentController?upvote=true&postId=<%=post.getPostId()%>" ><i class="bi bi-hand-thumbs-up"></i>       </a><%=post.getUpvote()%></div>
                                                            <div><a title="Dislike Post" href="<%=request.getContextPath()%>/servlet/PostCommentController?downvote=true&postId=<%=post.getPostId()%>" ><i class="bi bi-hand-thumbs-down"></i>         </a><%=post.getDownvote()%></div>
                                                             <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@getbootstrap">Answer</button>
                                                             <%if(regUser.getId()==post.getUserId()){%>
                                                                <a href="<%=request.getContextPath()%>/servlet/PostCommentController?deletePost=true&postId=<%=post.getPostId()%>"><button type="button" title="Delete Post" class="btn btn-outline-secondary">
                                                                    <i class="bi bi-x-circle"></i></button></a>
                                                            <%}%>
                                                            
                                                       

                                                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                                <div class="modal-dialog">
                                                                  <div class="modal-content">
                                                                    <div class="modal-header">
                                                                      <h5 class="modal-title" id="exampleModalLabel">New Answer</h5>
                                                                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                      <form action="<%=request.getContextPath()%>/servlet/PostCommentController?answer=true&postId=<%=post.getPostId()%>" method="POST">
                                                                        
                                                                        <div class="mb-5">
                                                                          
                                                                          <textarea name="text" class="form-control" id="message-text"></textarea>
                                                                        </div>
                                                                        <div class="modal-footer">
                                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                                            <button type="submit" class="btn btn-outline-dark float-end">Upload</button>
                                                                          </div>
                                                                      </form>
                                                                    </div>
                                                                    
                                                                  </div>
                                                                </div>
                                                              </div>
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
                                                                    <div><a title="Like Answer" href="<%=request.getContextPath()%>/servlet/PostCommentController?upvote=true&answerId=<%=an.getAnswerId()%>"><i class="bi bi-hand-thumbs-up"></i>      </a><%=an.getUpvote()%></div>
                                                                    <div><a title="Dislike Answer" href="<%=request.getContextPath()%>/servlet/PostCommentController?downvote=true&answerId=<%=an.getAnswerId()%>"><i class="bi bi-hand-thumbs-down"></i>         </a><%=an.getDownvote()%></div>
                                                                    <%if(!an.isSolution() && regUser.getId()==post.getUserId()){%>
                                                                        <a title="Correct Answer" href="<%=request.getContextPath()%>/servlet/PostCommentController?solution=true&answerId=<%=an.getAnswerId()%>"><i class="bi bi-check2"></i></a>
                                                                        
                                                                    <%}%>
                                                                    <%if(an.isSolution()){%>
                                                                        <button title="Correct Answer" class="btn float-end">
                                                                            <i  class="bi bi-check2-circle"></i>
                                                                        </button>
                                                                         
                                                                    <%}%>
                                                                    <%if(regUser.getId()==an.getUserId()){%>
                                                                        
                                                                            <a href="<%=request.getContextPath()%>/servlet/PostCommentController?deleteAns=true&answerId=<%=an.getAnswerId()%>"><button type="button" title="Delete Answer" class="btn btn-outline-secondary">
                                                                                <i class="bi bi-x-circle"></i></button></a>
                                                                          
                                                                    <%}%>
                                                                    

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
                                            
                                            <form  action="<%=request.getContextPath()%>/servlet/PostCommentController?upload=true" method="POST" class="form-horizontal">
                                            <li class="bg-white mb-3">
                                                
                                                <div class="form-outline">
                                                    <textarea class="form-control" name="text" id="textAreaExample2" rows="4" placeholder="Upload a message"></textarea>
                                                </div>
                                            </li>
                                            <button type="submit"  class="btn btn-outline-dark float-end">Upload</button>
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
                <scrip>var exampleModal = document.getElementById('exampleModal')
                    exampleModal.addEventListener('show.bs.modal', function (event) {
                      // Button that triggered the modal
                      var button = event.relatedTarget
                      // Extract info from data-bs-* attributes
                      var recipient = button.getAttribute('data-bs-whatever')
                      // If necessary, you could initiate an AJAX request here
                      // and then do the updating in a callback.
                      //
                      // Update the modal's content.
                      var modalTitle = exampleModal.querySelector('.modal-title')
                      var modalBodyInput = exampleModal.querySelector('.modal-body input')
                    
                      modalTitle.textContent = 'New message to ' + recipient
                      modalBodyInput.value = recipient
                    })
                    
                </scrip>
                <%@ include file="footer.jsp" %>

        </body>

        </html>