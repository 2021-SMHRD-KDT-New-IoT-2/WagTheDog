<%@page import="com.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="shorcut icon" type="image/x-icon" href="images/logoimg.png" type="text/css">
		<title>Wag The Dog</title>
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
		<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
					
						<article id="main" class="special">
						
						<header>
								<%@ include file="/Calendar.html"%>

								
								
								<div class="memo">
								
							
									<strong><span class="clickDate">��¥�� �������ּ���.</span></strong>
									<br>
									<label></label><input type="checkbox" name="medi" value="medicine">���࿩��</label>
									<br>
      								<label><input type="checkbox" name="hospital" value="hospital">��������</label>
      								
								
								
								<form>
								<span>MEMO</span>
								<br>
								<input type="textarea" name="text" value="">
								</form>
								<br>
								<br>
								<input type="submit" name="memosave" value="����">
								</div>

								
								<button>My Pets Issue</button>&nbsp;&nbsp;
								<a href="Update.jsp"><button>My Page</button></a>&nbsp;&nbsp;
								<br>
								<br>
								<%if(vo==null){ %>
									<a href="Main.jsp"><strong>�α����� �ʿ��� �������Դϴ�.</strong></a>
									
									<%}else{ %>
									<h5> ���� �������� ID : <%=vo.getId() %> </h5>
									<%} %>
									
									</header>
								</article>
							</div>
						</div>	
						
							<footer>

							<div style="text-align:center">
							<br>
							<a href="#" target="_blank" style="text-align:center">Blog</a>
							<a href="#" target="_blank">Github</a>
							<br>
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
			<script src="assets/js/Calender.js"></script>
			


	</body>
</html>