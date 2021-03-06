<%@ page import="com.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	<link rel="shorcut icon" type="image/x-icon" href="images/logoimg.png" type="text/css">
		<title>Wag The Dog</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/Calendar.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>

<body>

	<%
		MemberVO vo = (MemberVO)session.getAttribute("member");	
	%>

			<div id="page-wrapper">
					<!-- Header -->
				<div id="header">
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
	
		<!-- Main -->

				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
						<header>						
						<h2>Wag The Dog</h2>
						<p>MY Pets Issue</p>
						
						<form action="#" name="#">
						<div class="feed_amount">
						<h3>?????? ????</h3>
						</div>						
						</form>
						
						<form action="#" name="#">
						<div class="feed_times">
						<h3>???? ????</h3>
						</div>
						</form>
						
						<form action="#" name="#">
						<div class="feed_check">
						<h3>???? ????</h3>
						</div>
						</form>
						<div><br></div>
						<a href="#"><button>???? ???? ????</button></a>&nbsp;&nbsp;		
				
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