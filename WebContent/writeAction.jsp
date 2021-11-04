<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.model.MemberDAO" %>
<%@ page import="com.model.BbsDAO" %>
<%@ page import="com.model.MemberVO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbs" class="com.model.Bbs" scope="page"/>
<jsp:setProperty name="bbs" property="bbsTitle"/>
<jsp:setProperty name="bbs" property="bbsContent"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		MemberVO vo = (MemberVO)session.getAttribute("member");
		String user_id = vo.getUser_id();
		
		if(user_id == null){
			PrintWriter script = response.getWriter();
			
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href='Main.jsp'");
			script.println("</script>");
		}else{
			if(bbs.getBbsTitle() == null || bbs.getBbsContent() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력되지 않은 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}else {
				BbsDAO bbsDAO = new BbsDAO();
				
				int result = bbsDAO.write(bbs.getBbsTitle(), user_id, bbs.getBbsContent());
				
				if(result == -1){
					
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패했습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}else{					
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'Main.jsp'");
					script.println("</script>");
				}	
			}
		}
	
	%>
</body>
</html>