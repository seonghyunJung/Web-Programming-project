<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
<meta name="viewport" content ="width=device-width", initial-scale="1">

	
	
<title>JSP 웹사이트</title>
</head>
<body>
	
	<%
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}
	if(userID != null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다. ')");
		script.println("location.href = 'main.jsp'");
		script.println("<script>");
	}
		if(user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null ||
		 user.getUserEmail() == null ){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('"+user.getUserID()+user.getUserName() + user.getUserPassword() + user.getUserEmail()+"')");
			script.println(user.getUserID());
			script.println("history.back()");
			script.println("</script>");
		}
		else{
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user);
			if (result == -1){ 
				
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다. ')");
				script.println("history.back()");
				script.println("</script>");
			}
			else{
				session.setAttribute("userID", user.getUserID());
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href='main.jsp'");
			
				script.println("</script>");
			}
			
		}
		
	%>
		
	
</body>
</html>