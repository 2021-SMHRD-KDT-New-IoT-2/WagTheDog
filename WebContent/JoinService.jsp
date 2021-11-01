<%@ page import="com.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
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
						<h2>회원가입</h2>
						<p>Wag The Dog의 가족이 되어주세요!</p>
					
						<div>
							<form action="JoinService" method="post">
								<!-- ID 중복체크 -->
								<input name="id" id="input_id" type="text" placeholder="ID를 입력하세요" required=required>
								<div><br></div>
								<input type="button" value="ID중복체크" onclick="idCheck()"> <br> 
								<span id="sp_result"></span> <br>
								
								<!-- 회원가입 필수요소 -->
								<input name="pw" type="password" placeholder="PW를 입력하세요" required=required>
								<br> <input name="phone_num" type="tel" placeholder="전화번호를 입력하세요" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required=required>
								<br> <input name="name" type="text" placeholder="이름을 입력하세요" required=required>
								<br> <input name="email" type="text" placeholder="이메일을 입력하세요" required=required>
								<br> <input name="address" type="text" placeholder="집주소를 입력하세요" required=required> 
								<br> <input name="pet_name" type="text" placeholder="반려견의 이름을 입력하세요" required=required>
								<br> <input name="pet_age" type="text" placeholder="반려견의 나이를 입력하세요" required=required>
								<br> <input name="pet_variety" type="text" placeholder="반려견의 품종을입력하세요" required=required>								
								<div><br></div>
								<input type="submit" value="JoinUs" class="button fit">&nbsp;&nbsp;
								<input type="reset" value="Reset" class="button fit">&nbsp;&nbsp;
								<input type="button" onclick="location.href='Main.jsp'" value="Cancel" class="button fit">
								
							</form>	
						</div>		
						</header>
						
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
	
			<script>
			
			function idCheck(){
				
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