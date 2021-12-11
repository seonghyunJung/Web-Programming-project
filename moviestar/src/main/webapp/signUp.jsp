<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.User" %>
<%@ page import = "user.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id = "user" class="user.User" scope="page" />
<jsp:setProperty name = "user" property = "userID" />
<jsp:setProperty name = "user" property = "userPassword" />
<jsp:setProperty name = "user" property = "userName" />
<jsp:setProperty name = "user" property = "userEmail" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
 
 <!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->

<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
 

</head>
  <style type="text/css">
 
    .intro {
  height: 100%;
}

	.gradient-custom {
  /* fallback for old browsers */
  background: black;

  /* Chrome 10-25, Safari 5.1-6 */
  
}
  </style>
  
   <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600&display=swap" rel="stylesheet">
 </head>
 <body>

    <section class="intro">

  <div class="mask d-flex align-items-center h-100 gradient-custom">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12 col-lg-9 col-xl-7">
             <h1 class="text-center"style="color:white;">Movie Star</h1>
          <div class="card text-center">
      
            <div class="card-body text-center p-4 p-md-5">
              <h3 class="mb-4 pb-2">회원가입</h3>

              <form action="signUpAction.jsp" method="post">
				<center>
                <div>
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input name="userName"type="text" id="firstName" class="form-control" placeholder="이름"/>
                      <label class="form-label" for="firstName">이름</label>
                    </div>

                  </div>
               	</div>
               	
               	<div>
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" name="userID"id="lastName" class="form-control" placeholder="ID"/>
                      <label class="form-label" for="lastName">ID</label>
                    </div>
										
                    
                  </div>
				</div>
				<div >                  
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="password" name="userPassword"id="lastName" class="form-control" placeholder="PWD"/>
                      <label class="form-label" for="lastName">PWD</label>
                    </div>
										
                    
                  </div>
                </div>
              

               

                <div >
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="email" name="userEmail" id="emailAddress" class="form-control" placeholder="Email@"/>
                      <label class="form-label" for="emailAddress">Email</label>
                    </div>

                  </div>
                  
                </div>

                <div >
                  <div class="col-12">

                    

                    <div class="mt-2">
                      <a class="btn btn-primary btn-lg" href="main.jsp" type="button" value="Cancel" />Cancel</a>
                      <input class="btn btn-warning btn-lg" type="submit" value="Submit" />
                    </div>

                  </div>
                </div>
  </center>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</section>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"></script>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="https://code.jquery.com/jquery-1.11.3.js" type="text/javascript"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

   </body>
  </html>
  