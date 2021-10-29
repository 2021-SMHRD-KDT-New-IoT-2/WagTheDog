<%@ page import="com.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="shorcut icon" type="image/x-icon" href="images/logoimg.png" type="text/css">
		<title>Wag The Dog</title>
		<meta charset="EUC-KR">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body>
	<%

		MemberVO vo = (MemberVO)session.getAttribute("member");	
;
	
	%>
			<div id="page-wrapper">

			<!-- Header -->
				<div id="header">
				<!-- Nav -->
					
						<nav id="nav">
						<a href="Main.jsp"><img src="images/logoimg.png" width="75px" height="75px"></a>
							<ul>
								
								<li><strong><a href="WebCare.jsp">Web CARE</strong></a></li>
								<li><strong><a href="WhoWeAre.jsp">Who WE ARE</strong></a></li>
								<li><strong><a href="Product.jsp">PRODUCT</strong></a></li>
								<li>
									<a href="#"><strong>Communicate</strong></a>
									<ul>
										<li><a href="Notice.jsp">Notice</a></li>
										<li><a href="QNA.jsp">Q&A</a></li>
										<li><a href="Comminity.jsp">Communication</a></li>
									</ul>
									 <%if(vo==null){ %>
									<li><a href="Main.jsp">LOGIN</a></li>
									
									<%}else{ %>
									<li><a href="LogoutService">LOGOUT</a><li>
									<li><a href="Update.jsp">MYPAGE</a></li>
									<%} %>
								</li>
								
							</ul>
						</nav>
					</div>
					<!-- Inner -->
						<div class="wrapper style1">
							
							<div class="container">
							
								<article id="main" class="special">
								
									<header>
									<h2>회원 정보 수정</h2>
									<br>
									<form action="UpdateService" method="post">
									<%if(vo==null){ %>
									<%response.sendRedirect("Main.jsp"); %>
									
									<%}else{ %>
									현재 접속중인  ID : <%=vo.getId() %> 
									<br>
									현재 이름 : <%=vo.getName() %>
									<br>
									현재 주소 : <%=vo.getAddress() %>
									<%} %>
									
									<br>
									<br>
									 <form action = "UpdateService" method="post">
									<input name="pw" type="password" placeholder="변경할 PW를 입력하세요" style="width: 500px; margin: 0 auto;">
									<br>
									<input name="name" type="text"    placeholder="변경할 이름을 입력하세요" style="width: 500px; margin: 0 auto;">
									<br>
									<input name="address" type="text"    placeholder="변경할 주소를 입력하세요" style="width: 500px; margin: 0 auto;">
									<br>
									<br>
									<input type="submit" value="수정" class="button fit">
									</form>
									</header>
								</article>
								</div>
						</div>

					
				
							<footer>

							<div style="text-align:center">
							<a href="#" target="_blank" style="text-align:center">Blog</a>
							<a href="#" target="_blank">Github</a>
							 <span>e-mail : </span>
							 <br>
							 <span>CopyRight 2021. WagTheDog. All Rights Reserved.</span>
							</div>
							</footer>
				<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			
</body>
</html>