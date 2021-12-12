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
                        지난주 박스오피스
                    </div>
                    <dl id="rank-list" style="">
                        <dt>실시간 급상승 검색어</dt>
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
                   		
                        <div class="card-view">
                            <div class="card-header avengersEndgame" OnClick="location.href ='avengersEndgame.jsp'" >
                            	<div class="card-header-icon">

                                </div>
                            </div>
                       
    					
                            <div class="card-movie-content">
                                <div class="card-movie-content-head">
                                    <a href="avengersEndgame.jsp">
                                        <h3 class="card-movie-title">Avengers: Endgame</h3>
                                    </a>
                                    <div class="ratings"><span><%= movieDAO.callStar("avengersEndgame")%></span>/5</div>
                                </div>
                                <div class="card-movie-info">
                                    <div class="movie-running-time">
                                        <label>Running time</label>
                                        <span>3hr 1min</span>
                                    </div>
                                    <div class="movie-running-time">
                                        <label>Release date</label>
                                        <span>2019.04.24</span>
                                    </div>
                                </div>
                            </div>
                       
               			</div>
               			
                        <!-- Movie Card End -->
    
                        <!-- Movie Card Start -->
                        
                        <div class="card-view">
                            <div class="card-header spiderman" OnClick="location.href ='spidermanNowayhome.jsp'">
                                <div class="card-header-icon">
                                    
                                        
                                    
                                </div>
                            </div>
                           
                            
                            <div class="card-movie-content">
                                <div class="card-movie-content-head">
                                    <a href="spidermanNowayhome.jsp">
                                        <h3 class="card-movie-title">Spiderman:<br> No way home</h3>
                                    </a>
                                    <div class="ratings"><span><%=movieDAO.callStar("spidermanNowayhome") %></span>/5</div>
                                </div>
                                <div class="card-movie-info">
                                    <div class="movie-running-time">
                                        <label>Running time</label>
                                        <span>2hr 28min</span>
                                    </div>
                                    <div class="movie-running-time">
                                        <label>Release date</label>
                                        <span>2021.12.15</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                        <!-- Movie Card End -->
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header dune" OnClick="location.href ='dune.jsp'">
                                <div class="card-header-icon">
                                    <a href="dune.jsp">
                                        
                                    </a>
                                </div>
                            </div>
                            <div class="card-movie-content">
                                <div class="card-movie-content-head">
                                    <a href="dune.jsp">
                                        <h3 class="card-movie-title">Dune</h3>
                                    </a>
                                    <div class="ratings"><span><%=movieDAO.callStar("dune") %></span>/5</div>
                                </div>
                                <div class="card-movie-info">
                                    <div class="movie-running-time">
                                        <label>Running time</label>
                                        <span>2hr 35min</span>
                                    </div>
                                    <div class="movie-running-time">
                                        <label>Release date</label>
                                        <span>2021.10.20</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Movie Card End -->
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header dontlookup" OnClick="location.href ='dontlookup.jsp'">
                                <div class="card-header-icon">
                                    <a href="dontlookup.jsp">
                                        
                                    </a>
                                </div>
                            </div>
                            <div class="card-movie-content">
                                <div class="card-movie-content-head">
                                    <a href="dontlookup.jsp">
                                        <h3 class="card-movie-title">Don't look up</h3>
                                    </a>
                                    <div class="ratings"><span><%=movieDAO.callStar("dontlookup") %></span>/5</div>
                                </div>
                                <div class="card-movie-info">
                                    <div class="movie-running-time">
                                        <label>Running time</label>
                                        <span>2hr 19min</span>
                                    </div>
                                    <div class="movie-running-time">
                                        <label>Release date</label>
                                        <span>2021.12.08</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Movie Card End -->
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header encanto" OnClick="location.href ='encanto.jsp'">
                                <div class="card-header-icon">
                                    <a href="encanto.jsp">
                                        
                                    </a>
                                </div>
                            </div>
                            <div class="card-movie-content">
                                <div class="card-movie-content-head">
                                    <a href="encanto.jsp">
                                        <h3 class="card-movie-title">Encanto</h3>
                                    </a>
                                    <div class="ratings"><span><%=movieDAO.callStar("encanto") %></span>/5</div>
                                </div>
                                <div class="card-movie-info">
                                    <div class="movie-running-time">
                                        <label>Running time</label>
                                        <span>1hr 49min</span>
                                    </div>
                                    <div class="movie-running-time">
                                        <label>Release date</label>
                                        <span>2021.11.24</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Movie Card End -->
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header kimetuno" OnClick="location.href ='kimetuno.jsp'">
                                <div class="card-header-icon">
                                    <a href="kimetuno.jsp">
                                        
                                    </a>
                                </div>
                            </div>
                            <div class="card-movie-content">
                               <div class="card-movie-content-head" >
                                    <a href="kimetuno.jsp">
                                        <h3 class="card-movie-title">귀멸의 칼날 :<br> 주합회의</h3>
                                    </a>
                                    <div class="ratings"><span><%=movieDAO.callStar("kimetuno") %></span>/5</div>
                                </div>
                                <div class="card-movie-info">
                                    <div class="movie-running-time">
                                        <label>Running time</label>
                                        <span>1hr 45min</span>
                                    </div>
                                    <div class="movie-running-time">
                                        <label>Release date</label>
                                        <span>2021.12.01</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Movie Card End -->
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header eternals" OnClick="location.href ='eternals.jsp'">
                                <div class="card-header-icon">
                                    <a href="eternals.jsp">
                                        
                                    </a>
                                </div>
                            </div>
                            <div class="card-movie-content">
                                <div class="card-movie-content-head">
                                    <a href="eternals.jsp">
                                        <h3 class="card-movie-title">Eternals</h3>
                                    </a>
                                    <div class="ratings"><span><%=movieDAO.callStar("eternals") %></span>/5</div>
                                </div>
                                <div class="card-movie-info">
                                    <div class="movie-running-time">
                                        <label>Running time</label>
                                        <span>2hr 35min</span>
                                    </div>
                                    <div class="movie-running-time">
                                        <label>Release date</label>
                                        <span>2021.11.03</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Movie Card End -->
    
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header nothingSerious" OnClick="location.href ='nothingSerious.jsp'">
                                <div class="card-header-icon">
                                    <a href="nothingSerious.jsp">
                                        
                                    </a>
                                </div>
                            </div>
                            <div class="card-movie-content">
                                <div class="card-movie-content-head">
                                    <a href="nothingSerious.jsp">
                                        <h3 class="card-movie-title">연애 빠진 로맨스</h3>
                                    </a>
                                    <div class="ratings"><span><%=movieDAO.callStar("nothingSerious") %></span>/5</div>
                                </div>
                                <div class="card-movie-info">
                                    <div class="movie-running-time">
                                        <label>Running time</label>
                                        <span>1hr 35min</span>
                                    </div>
                                    <div class="movie-running-time">
                                        <label>Release date</label>
                                        <span>2021.11.24</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Movie Card Start -->
                        <div class="card-view">
                            <div class="card-header spiritwalker" OnClick="location.href ='spiritwalker.jsp'">
                                <div class="card-header-icon">
                                    <a href="spiritwalker.jsp">
                                        
                                    </a>
                                </div>
                            </div>
                            <div class="card-movie-content">
                                <div class="card-movie-content-head">
                                    <a href="spiritwalker.jsp">
                                        <h3 class="card-movie-title">유체이탈자</h3>
                                    </a>
                                    <div class="ratings"><span><%=movieDAO.callStar("spiritwalker") %></span>/5</div>
                                </div>
                                <div class="card-movie-info">
                                    <div class="movie-running-time">
                                        <label>Running time</label>
                                        <span>1hr 48min</span>
                                    </div>
                                    <div class="movie-running-time">
                                        <label>Release date</label>
                                        <span>2021.11.24</span>
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