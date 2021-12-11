<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "notice.Notice" %>
<%@ page import = "notice.noticeDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id = "notice" class="notice.Notice" scope="page" />
<jsp:setProperty name = "notice" property = "noticeContent" />


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
		float movieStar = -1.0f;
		String movieTitle= null;
		String noticeUserId= null;
		int noticeId = 0;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
			PrintWriter script = response.getWriter();
			
			//movieStar = Float.parseFloat(request.getParameter("movieStar"));
			movieTitle = (String) session.getAttribute("movieTitle");
			//noticeId = Integer.parseInt(request.getParameter("noticeId"));
		}
		if(request.getParameter("noticeId") != null){
			noticeId = Integer.parseInt(request.getParameter("noticeId"));
		}
		if(request.getParameter("noticeUserId") != null){
			noticeUserId = (String) request.getParameter("noticeUserId");
		}
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요. ')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}
		
		else{
			
			if(!userID.equals(noticeUserId)){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('권한이 없습니다.');");
				script.println("history.back()");
				script.println("</script>");
			}else{
				noticeDAO noticeDAO = new noticeDAO();
				int result = noticeDAO.deleteCmt(noticeId);
				if (result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('"+movieTitle+"');");
					script.println(movieStar);
					script.println(userID);
					script.println(notice.getNoticeContent());
					script.println("alert('글삭제 실패 ')");
					script.println("history.back();");
					script.println("</script>");
				}
				else{
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글삭제 성공')");
					script.println("location.href='"+movieTitle+".jsp'");
					
					script.println("</script>");
				}	
			}
				
		}
		
	%>
</body>
</html>