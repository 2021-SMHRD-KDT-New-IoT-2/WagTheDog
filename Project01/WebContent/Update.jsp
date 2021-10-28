<%@ page import="com.model.MemberVO"%>
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
								
							<h5>ȸ�� ���� ����</h5>
								<br>
								<form action="UpdateService" method="post">
									<%if(vo==null){ %>
									<%response.sendRedirect("Main.html"); %>
									
									<%}else{ %>
									���� �������� ���̵� ID : <%=vo.getId() %> 
									<%} %>
									<br>
									<br>
									<input name="pw" type="password" placeholder="������ PW�� �Է��ϼ���" style="width: 500px; margin: 0 auto;">
									<br>
									<input name="name" type="text"    placeholder="������ �̸��� �Է��ϼ���" style="width: 500px; margin: 0 auto;">
									<br>
									<input name="address" type="text"    placeholder="������ �ּҸ� �Է��ϼ���" style="width: 500px; margin: 0 auto;">
									<br>
									<br>
									<input type="submit" value="����" class="button fit" style="width: 100px; margin: 0 auto;">
								</form>
								
							</header>	
						</div>

					<!-- Nav -->
					
						<nav id="nav">
						<a href="Main.html"><img src="images/logoimg.png" width="75px" height="75px"></a>
							<ul>
								<li>
									<a href="#"><strong>Communicate</strong></a>
									<ul>
										<li><a href="#">Notice</a></li>
										<li><a href="#">FAQ</a></li>
										<li><a href="bbs.jsp">QnA</a></li>
									</ul>
								</li>
								<li><strong><a href="#">Web CARE</strong></a></li>
								<li><strong><a href="#">PRODUCT</strong></a></li>
								<li><strong><a href="#">Who we are</strong></a></li>
							</ul>
						</nav>

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