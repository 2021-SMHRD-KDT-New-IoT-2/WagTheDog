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
								</li>
								
							</ul>
						</nav>
				</div>
		<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
					
						<article id="main" class="special">
						
						<header>
						
						<h2><a href="#">WEB CARE</a></h2>
								<p>
								�츮������ ���¸� Ȯ���غ�����!
								</p>
							</header>
							<header>
								<%@ include file="/Calendar.html"%>
								
								<section>
								
								<div class="memo">
								<span>��¥</span>
								<ul>
									<li>���� ���� <input type="checkbox" name="medicine"></li>
									<br>
									<li>������ �����<input type="checkbox" name="hospital"></li>
								</ul>	
									
								<textarea></textarea>
								<br>
								<br>
								<input type="submit" value="����">
								</div>
								
								</section>
								
								<button>My Pets Issue</button>&nbsp;&nbsp;
								<a href="Update.jsp"><button>My Page</button></a>&nbsp;&nbsp;
								<br>
								<br>
								<%if(vo==null){ %>
									<a href="Main.jsp"><strong>LOGIN</strong></a>
									
									<%}else{ %>
									<h5> ���� �������� ID : <%=vo.getId() %> </h5>
									<a href="LogoutService.jsp">LOGOUT</a>
									<%} %>
								
								</header>
								
							</article>	
						</div>
					</div>
					
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