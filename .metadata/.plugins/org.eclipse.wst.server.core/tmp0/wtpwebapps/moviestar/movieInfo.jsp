<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "notice.Notice" %>
<%@ page import = "notice.noticeDAO" %>
<%@ page import = "movie.movieCTO" %>
<%@ page import = "movie.movieDAO" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Modern Business - Start Bootstrap Template</title>
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
    </head>
    <body class="d-flex flex-column h-100">
    <%
    movieDAO movieDAO = new movieDAO();
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
</main>
<center>
            <!-- Features section-->
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 movie_list">
                <div class="pt-8 pb-2 mb-3 border-bottom" style="z-index: 1;">
    
                    <div class="row" style="justify-content:space-between;">
                        <h1 >Movies</h1>
                    
    
    
                        <!-- Movie Card Start -->
                        <a href="avengersEndgame.jsp">
                        <div class="card-view">
                            <div class="card-header avengersEndgame" >
                            	

                            </div>
                       
    					</a>
                            <div class="card-movie-content">
                                <div class="card-movie-content-head">
                                    <a href="avengersEndgame.jsp">
                                        <h3 class="card-movie-title">Avengers: Endgame</h3>
                                    </a>
                                    <div class="ratings"><span><%= movieDAO.callStar("avengersEndgame")%></span>/5</div>
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
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header hobbsShaw">
                                <div class="card-header-icon">
                                    <a href="#">
                                        
                                    </a>
                                </div>
                            </div>
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
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header Johnwick">
                                <div class="card-header-icon">
                                    <a href="#">
                                        <i class="material-icons header-icon">play_arrow</i>
                                    </a>
                                </div>
                            </div>
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
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header deadPool">
                                <div class="card-header-icon">
                                    <a href="#">
                                        <i class="material-icons header-icon">play_arrow</i>
                                    </a>
                                </div>
                            </div>
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
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header theLionking">
                                <div class="card-header-icon">
                                    <a href="#">
                                        <i class="material-icons header-icon">play_arrow</i>
                                    </a>
                                </div>
                            </div>
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
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header madMax">
                                <div class="card-header-icon">
                                    <a href="#">
                                        <i class="material-icons header-icon">play_arrow</i>
                                    </a>
                                </div>
                            </div>
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
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header aquaMan">
                                <div class="card-header-icon">
                                    <a href="#">
                                        <i class="material-icons header-icon">play_arrow</i>
                                    </a>
                                </div>
                            </div>
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
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header missionImpossible">
                                <div class="card-header-icon">
                                    <a href="#">
                                        <i class="material-icons header-icon">play_arrow</i>
                                    </a>
                                </div>
                            </div>
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
            </main>
            </center>
        <!-- Footer-->
        <footer class="bg-dark py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; Your Website 2021</div></div>
                    <div class="col-auto">
                        <a class="link-light small" href="#!">Privacy</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Terms</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Contact</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="https://code.jquery.com/jquery-1.11.3.js" type="text/javascript"></script>
        <script src="js/scripts2.js"></script>
       
        
    </body>
</html>