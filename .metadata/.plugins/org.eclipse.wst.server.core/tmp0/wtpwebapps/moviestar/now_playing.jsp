<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "notice.Notice" %>
<%@ page import = "notice.noticeDAO" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">



<link rel="stylesheet" href="css/now_playing.css" />

<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
	
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<link href="css/rank.css" rel="stylesheet" />
<link href="css/realtime.css" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>    
<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600&display=swap" rel="stylesheet">
  <title>Now Playing</title>
</head>
<body class="d-flex flex-column h-100">
 <%
	String userID = null;
if(session.getAttribute( "userID") != null){
	userID = (String) session.getAttribute("userID");
}
%>
  <main class="flex-shrink-0">
            <!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container px-5">
        <a class="navbar-brand" href="main.jsp">Movie Star</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="main.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="movieInfo.jsp">Movie</a></li>
                <li class="nav-item me-sm-3"><a class="nav-link" href="now_playing.jsp">Current Movies</a></li>
                <div id="content " class="nav-item dropdown ">
                    <div class=""style=" color: white;padding-left:10px; ">
                        ????????? ???????????????
                    </div>
                    <dl id="rank-list" style="">
                        <dt>????????? ????????? ?????????</dt>
                        <dd>
                            <ol id="rank" style="padding-left : 10px;">
                                <li><a href="#">1. </a></li>
                                <li><a href="#">2. </a></li>
                                <li><a href="#">3. </a></li>
                                <li><a href="#">4. </a></li>
                                <li><a href="#">5. </a></li>
                                <li><a href="#">6. </a></li>
                                <li><a href="#">7. </a></li>
                                <li><a href="#">8. </a></li>
                                <li><a href="#">9. </a></li>
                                <li><a href="#">10. </a></li>
                            </ol>
                        
                        </dd>
                    </dl>
                    <div id ="content11" class="dropdown-content " style="z-index: 2; ">
                        <div id ="rank-list1" class=" me-sm-3">
                        <ol style="list-style-type: none" id= "rank1" >
                                    <li><a href="#">1. </a></li>
                                    <li><a href="#">2. </a></li>
                                    <li><a href="#">3. </a></li>
                                    <li><a href="#">4. </a></li>
                                    <li><a href="#">5. </a></li>
                                    <li><a href="#">6. </a></li>
                                    <li><a href="#">7. </a></li>
                                    <li><a href="#">8. </a></li>
                                    <li><a href="#">9. </a></li>
                                    <li><a href="#">10. </a></li>
                                </ol>
                                </div>
                    </div>
                </div>
                <li><div >
         				
				         <%
				if(userID == null){
					%>
				         <li class="nav-item "><a class=" btn btn-outline-light me-sm-3" href="login.html">Login</a></li>
				         <li class="nav-item"><a class=" btn btn-outline-light me-sm-3" href="signUp.html">Sign Up</a></li>
				         <%}
				         else{
				         %>
				         <li style="padding-right:30px;"><a style="color:white;"><h3>Welcome <%=userID %></h3></a></li>
				         <li class="nav-item"><a class=" btn btn-outline-light me-sm-3" href="logoutAction.jsp">Log Out</a></li>
				         <%}%>
                    
                    
                </div></li> 
             </ul>
         </div>
      </div>
</nav>
<center>
  <div class="row">
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <!-- Movie Card Start -->
          <div class="card-view">
            <div class="card-header avengersEndgame" style="margin-left:12px;"></div>
            <div class="card-movie-content">
              <div class="card-movie-content-head">
                <a href="#">
                  <h3 class="card-movie-title">Avengers: Endgame</h3>
                </a>
                <div class="ratings"><span>8.8</span>/10</div>
              </div>
              <div class="card-movie-info">
                <div class="movie-running-time">
                  <label>Last update</label>
                  <span>Sun 8 Sept - 10:00PM</span>
                </div>
                <div class="movie-running-time">
                  <label>Running time</label>
                  <span>2hr 09min</span>
                </div>
              </div>
            </div>
          </div>
          <!-- Movie Card End -->
        </div>

        <div class="swiper-slide">
          <!-- Movie Card Start -->
          <div class="card-view">
            <div class="card-header hobbsShaw"></div>
            <div class="card-movie-content">
              <div class="card-movie-content-head">
                <a href="#">
                  <h3 class="card-movie-title">Hobbs & Shaw</h3>
                </a>
                <div class="ratings"><span>9.7</span>/10</div>
              </div>
              <div class="card-movie-info">
                <div class="movie-running-time">
                  <label>Last update</label>
                  <span>Tue 4 July - 05:00PM</span>
                </div>
                <div class="movie-running-time">
                  <label>Running time</label>
                  <span>2hr 13min</span>
                </div>
              </div>
            </div>
          </div>
          <!-- Movie Card End -->
        </div>

        <div class="swiper-slide">
          <!-- Movie Card Start -->
          <div class="card-view">
            <div class="card-header Johnwick"></div>
            <div class="card-movie-content">
              <div class="card-movie-content-head">
                <a href="#">
                  <h3 class="card-movie-title">John Wick 3</h3>
                </a>
                <div class="ratings"><span>9.8</span>/10</div>
              </div>
              <div class="card-movie-info">
                <div class="movie-running-time">
                  <label>Last update</label>
                  <span>Wed 16 Aug - 07:00PM</span>
                </div>
                <div class="movie-running-time">
                  <label>Running time</label>
                  <span>2hr 33min</span>
                </div>
              </div>
            </div>
          </div>
          <!-- Movie Card End -->
        </div>

        <div class="swiper-slide">
          <!-- Movie Card Start -->
          <div class="card-view">
            <div class="card-header deadPool"></div>
            <div class="card-movie-content">
              <div class="card-movie-content-head">
                <a href="#">
                  <h3 class="card-movie-title">Deadpool 2</h3>
                </a>
                <div class="ratings"><span>7.3</span>/10</div>
              </div>
              <div class="card-movie-info">
                <div class="movie-running-time">
                  <label>Last update</label>
                  <span>Mon 16 Oct - 10:00PM</span>
                </div>
                <div class="movie-running-time">
                  <label>Running time</label>
                  <span>2hr 0min</span>
                </div>
              </div>
            </div>
          </div>
          <!-- Movie Card End -->
        </div>

        <div class="swiper-slide">
          <!-- Movie Card Start -->
          <div class="card-view">
            <div class="card-header theLionking"></div>
            <div class="card-movie-content">
              <div class="card-movie-content-head">
                <a href="#">
                  <h3 class="card-movie-title">The Lion King</h3>
                </a>
                <div class="ratings"><span>8.1</span>/10</div>
              </div>
              <div class="card-movie-info">
                <div class="movie-running-time">
                  <label>Last update</label>
                  <span>Sun 8 Sept - 10:00PM</span>
                </div>
                <div class="movie-running-time">
                  <label>Running time</label>
                  <span>2hr 36min</span>
                </div>
              </div>
            </div>
          </div>
          <!-- Movie Card End -->
        </div>

        <div class="swiper-slide">
          <!-- Movie Card Start -->
          <div class="card-view">
            <div class="card-header madMax"></div>
            <div class="card-movie-content">
              <div class="card-movie-content-head">
                <a href="#">
                  <h3 class="card-movie-title">Mad Max: Fury Road</h3>
                </a>
                <div class="ratings"><span>7.4</span>/10</div>
              </div>
              <div class="card-movie-info">
                <div class="movie-running-time">
                  <label>Last update</label>
                  <span>Tue 8 July - 05:00PM</span>
                </div>
                <div class="movie-running-time">
                  <label>Running time</label>
                  <span>2hr 19min</span>
                </div>
              </div>
            </div>
          </div>
          <!-- Movie Card End -->
        </div>

        <div class="swiper-slide">
          <!-- Movie Card Start -->
          <div class="card-view">
            <div class="card-header aquaMan"></div>
            <div class="card-movie-content">
              <div class="card-movie-content-head">
                <a href="#">
                  <h3 class="card-movie-title">Aquaman</h3>
                </a>
                <div class="ratings"><span>8.1</span>/10</div>
              </div>
              <div class="card-movie-info">
                <div class="movie-running-time">
                  <label>Last update</label>
                  <span>Wed 16 Aug - 07:00PM</span>
                </div>
                <div class="movie-running-time">
                  <label>Running time</label>
                  <span>2hr 14min</span>
                </div>
              </div>
            </div>
          </div>
          <!-- Movie Card End -->
        </div>

        <div class="swiper-slide">
          <!-- Movie Card Start -->
          <div class="card-view">
            <div class="card-header missionImpossible"></div>
            <div class="card-movie-content">
              <div class="card-movie-content-head">
                <a href="#">
                  <h3 class="card-movie-title">Mission Impossible</h3>
                </a>
                <div class="ratings"><span>7.8</span>/10</div>
              </div>
              <div class="card-movie-info">
                <div class="movie-running-time">
                  <label>Last update</label>
                  <span>Mon 16 Oct - 10:00PM</span>
                </div>
                <div class="movie-running-time">
                  <label>Running time</label>
                  <span>2hr 33min</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
        <!-- ?????????????????????????????? -->
        <div class="swiper-button-next"></div> <!-- ???????????? ???????????? (???????????????????????? ???????????? ????????????)-->
        <div class="swiper-button-prev"></div> <!-- ???????????? ????????????-->

        <!-- ?????????????????? -->
        <div class="swiper-pagination"></div>
    </div>
  </div> 
  
 </center>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
  <script src="js/now_playing.js"></script>
</body>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="https://code.jquery.com/jquery-1.11.3.js" type="text/javascript"></script>
<script src="js/scripts2.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"></script>
</html>