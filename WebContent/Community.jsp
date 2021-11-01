<%@ page import="com.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>

<html>
	<head>
	<link rel="shorcut icon" type="image/x-icon" href="images/logoimg.png" type="text/css">
		<title>Wag The Dog</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css"/></noscript>
		<style>
		.fontcolor{
		color : black;
		}
		.table{
		table-striped;
		text-align : center;
		border : 2px solid #ddd
		}
		</style>
		
	</head>
		
		<body>
			<%	
			MemberVO vo = (MemberVO)session.getAttribute("member");
			%>
			
		<!-- Main css -->
		
		<div id="page-wrapper">
		
			<div id="header">
		<!-- 로고 -->
				<div class="wrapper style1">
					<nav id="nav">
					
							<%if(vo==null){ %>
								<a href="Main.jsp"><img src="images/logoimg.png" width="75px" height="75px"></a>
									
								<%}else{ %>
								<a href="LoginMain.jsp"><img src="images/logoimg.png" width="75px" height="75px"></a>

								<%} %>
							<!-- 상단메뉴  -->
							
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
						
			<!-- 게시판 -->
			<div class="container">
				<div class="row" align = "center">
					<table class="table table-striped">
						<thead>
						<tr class="fontcolor">
							<th scope = "col">글번호</th>
							<th scope = "col">제목</th>
							<th scope = "col">작성자</th>
							<th scope = "col">작성일</th>
						</tr>
						</thead>
						<tbody>
						<tr class="fontcolor">
							<td>1</td>
							<td>안녕하세요</td>
							<td>kim</td>
							<td>2021-10-27</td>
						</tr>
						</tbody>
						</table>
						
						<div align="center">
						<a href="write.jsp" class="btn">글쓰기</a>
					
						</div>
				</div>
			</div>
			
			
			</div>
		</div>		
					<!-- footer  -->
						<footer>
						<div style="text-align:center">
						<a href="#" target="_blank" style="text-align:center">Blog</a>
						<a href="#" target="_blank">Github</a>
						<span>e-mail : </span>
						<br>
						<span>CopyRight 2021. WagTheDog. All Rights Reserved.</span>
						</div>
						</footer>
							
							
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