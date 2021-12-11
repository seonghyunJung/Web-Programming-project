<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
main
<%
	String userID = null;
if(session.getAttribute( "userID") != null){
	userID = (String) session.getAttribute("userID");
}
%>
 <div id = "header" style="z-index: 2;">
            <div id = "title">
                <h1>MOVIE STAR</h1>
            </div>
                <div id ="nav">
                    <ul style="list-style-type: none; overflow: hidden;">
                        <li class="active"><a href="#">HOME</a></li>
                        <li><a href="avengersInfo.jsp">MOVIE</a></li>
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
</body>
</html>