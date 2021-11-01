<%@page import="com.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
	<head>
		<link rel="shorcut icon" type="image/x-icon" href="images/logoimg.png" type="text/css">
		<meta charset="utf-8" />
		<title>Wag The Dog</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/Calendar.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	
<body>
	<%
		MemberVO vo = (MemberVO)session.getAttribute("member");	
		request.setCharacterEncoding("UTF-8");
	
	%>
			<div id="page-wrapper">
					
				<div id="header">
					
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
							
								<%@ include file="/Calendar.html"%>

								<!-- 
								<div class="popmemo" style="display : show;">
								<div><h3>Wag The Dog Calendar TIP</h3></div>
								</div>
								 -->
								 
								<div class="memo" style="display : none;">
								
								<form action="WebCaring" method="post">
								<div class="border">
								<h3 style = "color:#df7366; text-align : center;" >WEB CARE!</h3>
								<br>
								<h5>선택 된 날짜</h5>
								<input type="text" class="clickDate" name="memodate" readonly>
								</div>
								<div><br></div>
								<h5>특이사항이 있었나요?</h5>
								
								<br>
								<h6><label>약을 먹었어요<input type="checkbox" name="medicine" value="medicine"></label></h6>
								
      							<h6><label>병원을 갔어요<input type="checkbox" name="hospital" value="hospital"></label></h6>
      							
      							
      							<span>MEMO</span>
								<br>
								
								<input type="text" name="memo" value="">

								<div><br></div>
								<%if(vo==null){ %>
									<a href="Main.jsp"><strong>로그인 후에 저장할 수 있어요!</strong></a>
									
									<%}else{ %>
									<input type="submit" name="memosave" value="저장">
									<%} %>
									
								
									</form>
									<%    request.setCharacterEncoding("utf-8");
    								  String a = request.getParameter("memo"); %>
									
								</div>

								
								<a href="MyPetIssue.jsp"><button>My Pets Issue</button></a>&nbsp;&nbsp;
								<a href="Update.jsp"><button>My Page</button></a>&nbsp;&nbsp;
								<br>
								<br>
								<%if(vo==null){ %>
									<a href="Main.jsp"><strong>로그인이 필요한 페이지입니다.</strong></a>
									
									<%}else{ %>
									<h5> 현재 접속중인 ID : <%=vo.getId() %> </h5>
									<%} %>
									
									</header>
								</article>
							</div>
						</div>	
					</div>		
						
						
							<footer>

							<div style="text-align:center">
							<br>
							<a href="#" target="_blank" style="text-align:center">Blog</a>
							<a href="#" target="_blank">Github</a>
							<br>
							 <span>e-mail : WagTheDog</span>
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