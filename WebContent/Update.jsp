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
					<!-- Inner -->
						<div class="wrapper style1">
							
							<div class="container">
							
								<article id="main" class="special">
								
									<header>
									
									<h2>ȸ?????? ????</h2>
									<br>
									<form action="UpdateService" method="post">
									<%if(vo==null){ %>
									<%response.sendRedirect("Main.jsp"); %>
									
									<%}else{ %>
									???? ????????  ID : <%=vo.getId() %> 
									<br>
									???? ?̸? : <%=vo.getName() %>
									<br>
									???? ?ּ? : <%=vo.getAddress() %>
									<%} %>
									
									<br>
									<br>
									 <form action = "UpdateService" method="post">
									<input name="pw" type="password" placeholder="?????? PW?? ?Է??ϼ???">
									<div><br></div>
									<input name="name" type="text"    placeholder="?????? ?̸??? ?Է??ϼ???">
									<div><br></div>
									<input name="address" type="text"    placeholder="?????? ?ּҸ? ?Է??ϼ???">
									<div><br></div>
									<div><br></div>
									<input type="submit" value="????" class="button fit">
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