<%@page import="com.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shorcut icon" type="image/x-icon" href="images/logoimg.png" type="text/css">
		<title>Wag The Dog</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body class="homepage is-preload">

		<%	
			MemberVO vo = (MemberVO)session.getAttribute("member");
		%>
		
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="Main.jsp" id="logo">Wag The Dog</a></h1>
								<br>
								  <%if(vo==null){ %>
									<h3><a href="Main.jsp">로그인이 필요합니다.</a></h3>
									
									<%}else{ %>
								<h2><%=vo.getId() %>님 환영합니다!</h2>
									<%} %>
							</header>
							
						
						</div>

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
										<li><a href="#">Notice</a></li>
										<li><a href="#">Q&A</a></li>
										<li><a href="#">Communication</a></li>
										
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
							
		
			<!-- Main -->
				<div class="wrapper style2">
					<article id="main" class="container special">
						<a href="#"><img src="images/calendarimage.png" alt="" /></a>
						<header>
							<h2><a href="#">캘린더를 이용한 웹케어</a></h2>
							<p>
								반려동물의 급여시간, 급여횟수, 급여확인까지 한번에!
							</p>
						</header>

						<footer>
							<a href="WebCare.jsp" class="button">Web Care 바로가기!</a>
						</footer>
					</article>
				</div>
							<footer>
							
							<div style="text-align:center">
							<a href="#" target="_blank" style="text-align:center">Blog</a>
							<a href="#" target="_blank">Github</a>
							<br>
							 <span>e-mail : </span>
							 <br>
							 <span>CopyRight 2021. WagTheDog. All Rights Reserved.</span>
							<div>
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