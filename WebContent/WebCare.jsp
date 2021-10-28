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
								우리아이의 상태를 확인해보세요!
								</p>
							</header>
							<header>
								<%@ include file="/Calendar.html"%>
								
								<section>
								
								<div class="memo">
								<span>날짜(AJAX쓸지,아니면js에서값을가져올지)</span>
								<ul>
									<label><input type="checkbox" name="medi" value="medicine">투약여부</label>
									<br>
      								<label><input type="checkbox" name="hospital" value="hospital">병원여부</label>
      								<!-- <p>
      								<input type="submit" value="Submit"> 
      								<input type="reset" value="Reset">
      								</p>
      								 -->
								</ul>	
								
								<textarea></textarea>
								<br>
								<br>
								<input type="submit" value="저장">
								</div>
								
								</section>
								
								<button>My Pets Issue</button>&nbsp;&nbsp;
								<a href="Update.jsp"><button>My Page</button></a>&nbsp;&nbsp;
								<br>
								<br>
								<%if(vo==null){ %>
									<a href="Main.jsp"><strong>LOGIN</strong></a>
									
									<%}else{ %>
									<h5> 현재 접속중인 ID : <%=vo.getId() %> </h5>
									<a href="LogoutService.jsp">LOGOUT</a>
									<%} %>
								
								</header>
							</div>
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
			
				<script>
			function ComeDate(){
				
				var input = document.getElementById("input_id");
				$.ajax({
					type : "post", 
					data : {"id" : input.value}, 
					url : "IdCheckService",
					dataType : "text", 
					success : function(data){
						var sp_result = document.getElementById("sp_result");
		
						if(data=="true"){
							sp_result.innerText = "사용 불가능한 아이디";
						}else{
							$("#sp_result").text("사용 가능한 아이디");
						}
					},
					error : function(){
						alert("통신실패");
					}
				});
				
			}
			
			
			</script>

	</body>
</html>