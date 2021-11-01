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
<body>

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
											
						
						<div class="wrapper">
						<section class="carousel">
						<div class="reel">

						<article>
							<a href="Product.jsp" class="image featured"><img src="images/art01.jpg" alt="" /></a>
							<h3><strong><a href="Product.jsp">Product</a></strong></h3>							
							<h3>Wag The Dog의<br> 제품을 소개합니다.</h3>	
												
						</article>
						<article>
						<a href="WebCare.jsp" class="image featured"><img src="images/calendarimage.jpg" alt="" /></a>
						<h3><strong><a href="WebCare.jsp">WebCare</a></strong></h3>
						<h3>우리 아이의 상태를 <br>기록해보세요.</h3>	
						</article>
						<article>
							<a href="MyPetIssue.jsp" class="image featured"><img src="images/art03.jpg" alt="" /></a>
							<h3><strong><a href="MyPetIssue.jsp">MyPetIssue</a></strong></h3>
							<h3>우리 아이의 상태를<br>확인해보세요.</h3>	
						</article>
						
					</div>
						</div>
				
				</section>
				
				</div>

					<!-- Nav -->
					
						<nav id="nav">
									<%if(vo==null){ %>
									<a href="Main.jsp"><img src="images/logoimg.png" width="75px" height="75px"></a>
									
									<%}else{ %>
									<a href="LoginMain.jsp"><img src="images/logoimg.png" width="75px" height="75px"></a>

									<%} %>
							<ul>
								
								<li><strong><a href="WebCare.jsp">Web CARE</a></strong></li>
								<li><strong><a href="Product.jsp">PRODUCT</a></strong></li>
								<li><strong><a href="Q&A.jsp">Q&A</a></strong></li>								
								<li>
									<a href="#"><strong>Communicate</strong></a>
									<ul>
										<li><a href="Notice.jsp">Notice</a></li>
										<li><a href="Comminity.jsp">Communication</a></li>
									</ul>
									 <%if(vo==null){ %>
									<li><a href="Main.jsp">LOGIN</a></li>
									<li><a href="JoinService.jsp">JOIN</a></li>
									
									<%}else{ %>
									<li><a href="LogoutService">LOGOUT</a><li>
									<li><a href="Update.jsp">MYPAGE</a></li>
									<%} %>
								</li>
								
							</ul>
						</nav>
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