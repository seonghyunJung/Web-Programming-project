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
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"></script>
<style>
    #movieInfo{
        display:grid;
        grid-template-columns: 300px 700px;
        grid-template-rows: 300px 150px;

        grid-template-areas: 
        "movieThumb movieContent"
        "movieStory movieStory";
    }
    #movieThumb { grid-area :movieThumb;}
    #movieContent{grid-area : movieContent}
    #movieStory{grid-area : movieStory}
    #curCommentBox{
        display:grid;
        grid-template-columns: 100px 800px 100px;
        grid-template-rows: 100px;
    }
</style>
<body>
<%
String movieTitle = "avengersEndgame";
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

 <div id = "header" style="z-index: 2;">
            <div id = "title">
                <h1>MOVIE STAR</h1>
            </div>
                <div id ="nav">
                    <ul style="list-style-type: none; overflow: hidden;">
                        <li class="active"><a href="#">HOME</a></li>
                        <li><a href="#">MOVIE</a></li>
                        <li><a href="#">게시판</a></li>
                        
                    </ul>
                </div>
                
                <div id="login-form">
                    <ul>
                    <%
				if(userID == null){
					%>
                    <a href="login.html">Sign In</a>
                    <a href="signUp.html">Sign Up</a>
                    <%}
                    else{
                    %>
                    Welcome <%=userID %>
                    <a href="logoutAction.jsp">Log Out</a>
                    <%}%>
                    
                    </ul>
                </div>
        </div> 
	<div id="movieInfo" style="width:1000px; border:1px solid black; padding:10px; margin:10px; display: grid;">
        <div id="movieThumb" style="float:left;">
            <img src="avengers.jpg" style="width:200px;">
          	<%=noticeDAO.calStar(movieTitle) %><br>
          	<%=movieDAO.setMovie(movieTitle,noticeDAO.calStar(movieTitle))%>
          	<%=movieDAO.callStar(movieTitle) %>
        </div>
        <div id = "movieContent" style="">
            어벤저스 : 엔드게임<br><br>
            감독 : 앤서니 루소, 조 루소 <br><br>
            배우 : 로버트 다우니 주니어, ...
        </div>
        <div id = "movieStory" >
            타노스를 막아라 어벤저스용사들!!타노스를 막아라 어벤저스용사들!!타노스를 막아라 어벤저스용사들!!타노스를 막아라 어벤저스용사들!!타노스를 막아라 어벤저스용사들!!
        </div>
    </div>
    <form method="POST" action="writeAction.jsp" id="myForm">
    <div id = "commentBox" style="width:1000px; border:1px solid black; padding:10px; margin:10px;">
        <div id="comment">
            <textarea rows="5" style="width:1000px; font-size:15px;"name="noticeContent"></textarea>
        </div>
        별점
        
        <input type="submit" value="댓글작성">
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
    </div>
    </form>
    <div id="curCommentBox"  style="width:1000px; border:1px solid black; padding:10px; margin:10px;">
        <div id="userid" style="border:1px solid black;">userID</div>
        <div id="curComment"style="border:1px solid black;">정말 훌륭하고 재미있는 영화입니다 짱짱맨</div>
        <div id="star"style="border:1px solid black;">5.0</div>
    </div>
    <%
     
        ArrayList<Notice> list = noticeDAO.getList(pageNumber, movieTitle);
    	for(int i = 0; i< list.size(); i++){
    %>
    
    <div id="curCommentBox"  style="width:1000px; border:1px solid black; padding:10px; margin:10px;">
        <div id="userid" style="border:1px solid black;"><%= list.get(i).getUserId() %></div>
        <div id="curComment"style="border:1px solid black;"><%= list.get(i).getNoticeContent() %></div>
        <div id="star"style="border:1px solid black;" value="<%= list.get(i).getMovieStar() %>"><%= list.get(i).getMovieStar() %>
        	
        	<div class="cmtStar">
        		<div class="rating" data-rate="3">
        		<%for(int j = 0;j<list.get(i).getMovieStar();j++) {%>
				<i class="fas fa-star" style="color:#F05522;"></i>
				<%} 
				for(int k = 5-(int)list.get(i).getMovieStar(); k>0;k--){%>
				<i class="fas fa-star"></i>
				<%} %>
			</div>
			<script>
			
			console.log(<%=list.get(i).getMovieStar()%>);
			
			
			
			</script>
			
        	</div>
        </div>
    </div>
    <%} %>
</body>
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
</html>