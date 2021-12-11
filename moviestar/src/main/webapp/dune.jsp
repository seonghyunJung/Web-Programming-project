<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "notice.Notice" %>
<%@ page import = "notice.noticeDAO" %>
<%@ page import = "movie.movieCTO" %>
<%@ page import = "movie.movieDAO" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
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
<link href="css/cmt.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>    
<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600&display=swap" rel="stylesheet">
<title>Insert title here</title>
</head>
<style>
    #movieInfo{
        display:grid;
        grid-template-columns: 300px 700px;
        grid-template-rows: 320px 200px;

        grid-template-areas: 
        "movieThumb movieContent"
        "movieStory movieStory";
    }
    #movieThumb { grid-area :movieThumb;}
    #movieContent{grid-area : movieContent}
    #movieStory{grid-area : movieStory}
    #curCommentBox{
        display:flex;
        width:1000px;
        height:100px;
    }
</style>
<body>
<%
String movieTitle = "dune";
session.setAttribute("movieTitle",movieTitle);
String userID = null;
if(session.getAttribute( "userID") != null){
userID = (String) session.getAttribute("userID");
}

int pageNumber =1 ;
if(request.getParameter("pageNumber")!=null){
	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
}
noticeDAO noticeDAO = new noticeDAO();
movieDAO movieDAO = new movieDAO();
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

<center>
<div id="movieInfo" style="width:1050px; padding:10px; margin:10px; display: grid;">
	<div id="movieThumb" style="float:left; ">
		<img src="images/dune.jpg" style="width:70%;border-radius:5px;"><br>
		<% noticeDAO.calStar(movieTitle) ;%>
	          	<%movieDAO.setMovie(movieTitle,noticeDAO.calStar(movieTitle));%>
	</div>
	<div id = "movieContent" style="text-align:left;">
		<div id="movieTit">
			<h2><b>듄</b></h2>
	        Dune
		</div>
		<hr>
		<div id ="inner" style="display:flex;">
			<div id ="innerContent" style="width:200px;">
				<dl class="indexTit"style="display:flex;">
					<dt>개봉</dt>
					<dd>2019.04.24</dd>
				</dl>
				<dl class="indexTit" style="display:flex;">
					<dt>장르</dt>
					<dd>2019.04.24</dd>
				</dl>
				<dl class="indexTit" style="display:flex;">
					<dt>국가</dt>
					<dd>2019.04.24</dd>
				</dl>   
				<dl class="indexTit" style="display:flex;">
					<dt>등급</dt>
					<dd>2019.04.24</dd>
				</dl>   
				<dl class="indexTit" style="display:flex;">
					<dt>러닝타임</dt>
					<dd>2019.04.24</dd>
				</dl>         
	    	</div>
	    	<div id="innerContent">
	    	<dl class="indexTit"style="display:flex;">
					<dt>별점</dt>
					<dd><i class="fas fa-star" style="color : #F05522"></i>&nbsp<%=movieDAO.callStar(movieTitle) %> / 5</dd>
				</dl>
				<dl class="indexTit" style="display:flex;">
					<dt>장르</dt>
					<dd>2019.04.24</dd>
				</dl>
				<dl class="indexTit" style="display:flex;">
					<dt>국가</dt>
					<dd>2019.04.24</dd>
				</dl>   
				<dl class="indexTit" style="display:flex;">
					<dt>등급</dt>
					<dd>2019.04.24</dd>
				</dl>   
				<dl class="indexTit" style="display:flex;">
					<dt>러닝타임</dt>
					<dd>2019.04.24</dd>
				</dl> 
	    	</div>
		</div>
	    
	        
	</div>
	<div id = "movieStory" >
	        <p>인피니티 워 이후 절반만 살아남은 지구</p>
			<p>마지막 희망이 된 어벤져스</p>
			<p>먼저 떠난 그들을 위해 모든 것을 걸었다!</p>
			
			<b>
			<p>위대한 어벤져스</p>
			<p>운명을 바꿀 최후의 전쟁이 펼쳐진다!</p>
			</b>
	</div>
</div>
<form method="POST" action="writeAction.jsp" id="myForm">
<div id = "commentBox" style="width:1050px; padding:10px; margin:10px;">
<%if(userID == null){ %>
<div id = "comment">
	<textarea rows="5" style="width:1000px; font-size:15px; " onFocus = "this.blur()" value="로그인 후 이용하세요">로그인 후 이용하세요	</textarea>
	</div>
<%}else{ %>
<div id="comment">
    <textarea rows="5" name="noticeContent" style="width:1000px; font-size:15px; "></textarea>
    </div>
    <%} %>
    별점
    <div class="make_star">
			<select name="movieStar" id="makeStar">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select>
			<div class="rating" data-rate="3">
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>	
			</div>
		</div>
    <input type="submit" value="댓글작성">
</div>
</form>
<%
     	
        ArrayList<Notice> list = noticeDAO.getList(pageNumber, movieTitle);
    	for(int i = 0; i< list.size(); i++){
    %>
<div id="curCommentBox"  style="width:1050px;  padding:10px; margin:10px;">
		<div id="userid" style="display:flex;align-items:center;"><%= list.get(i).getUserId() %></div>
	        <div id="curComment"style="display:flex;align-items:center; text-align:center;"><%= list.get(i).getNoticeContent() %></div>
	        <!-- 별점 & 답글취소버튼-->
	        <div id="star"style="display:block;align-items:center;">
	        	<div class="cmtStar"style="display:flex;align-items:center;">
	        		<a value="<%= list.get(i).getMovieStar() %>"><%= list.get(i).getMovieStar() %></a>&nbsp
	        		<div class="rating" data-rate="3">
	        		<%for(int j = 0;j<list.get(i).getMovieStar();j++) {%>
					<i class="fas fa-star" style="color:#F05522;"></i>
					<%} 
					for(int k = 5-(int)list.get(i).getMovieStar(); k>0;k--){%>
					<i class="fas fa-star"></i>
					<%} %>
					</div>
	        	</div>
	        	<div style="color:gray;">
	        		<%=list.get(i).getNoticeDate() %>
	        	</div >
	        	<div>
	        	<a href="deleteAction.jsp?noticeId=<%=list.get(i).getNoticeID() %>&noticeUserId=<%=list.get(i).getUserId()
	        	%>" class="btn btn-danger btn-sm" >삭제</a>	
	        	</div>
	        	
	        </div>
	        
	        <input type="hidden" name ="noticeId" value="<%=list.get(i).getNoticeID() %>">
</div>
    
    <%} %>
</center>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"></script>
<script>
$(function(){
	var rating = $('.review .rating');
	
	rating.each(function(){
		var targetScore = $(this).attr('data-rate');
		$(this).find('svg:nth-child(-n+'+targetScore+')').css({color:'#F05522'});
	});
	
	var userScore = $('#makeStar');
	userScore.change(function(){
		var userScoreNum = $(this).val();
		$('.make_star svg').css({color:'#000'});
		$('.make_star svg:nth-child(-n+'+userScoreNum+')').css({color:'#F05522'});
		
	})
	
	

				
	
	/* var cmtNum = $('#star').val();
	console.log(cmtNum);
					//s$('.cmtStar svg').css({color:'#000'});
	var count= 0;
	for(int i = 0;i<20; i++){
	$('#star'+i+' .cmtStar svg:nth-child(-n+'+cmtNum+')').css({color:'#F05522'});
	} */
			
});
</script>
</body>
</html>