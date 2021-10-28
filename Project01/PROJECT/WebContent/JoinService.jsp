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
	<div id="page-wrapper">
		<!-- Header -->
		<div id="header">

			<!-- Nav -->

			<nav id="nav">
				<a href="Main.html"><img src="images/logoimg.png" width="75px" height="75px"></a>
				<ul>
					<li><a href="#"><strong>Communicate</strong></a>
						<ul>
							<li><a href="#">Notice</a></li>
							<li><a href="#">Q&A</a></li>
							<li><a href="#">Communication</a></li>
						</ul></li>
					<li><strong><a href="LoginMain.jsp">Web CARE</strong></a></li>
					<li><strong><a href="Product.jsp">PRODUCT</strong></a></li>
					<li><strong><a href="WhoWeare.jsp">Who WE ARE</strong></a></li>
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
					</header>

					<header>
						<div id="joincss">
							<form action="JoinService" method="post">
								<!-- ID 중복체크 -->
								<input name="id" id="input_id" type="text" placeholder="ID를 입력하세요"><br> 
								<input type="button" value="ID중복체크" onclick="idCheck()"> <br> 
								<span id="sp_result"></span> <br>
								<!-- 회원가입 필수요소 -->
								<input name="pw" type="password" placeholder="PW를 입력하세요">
								<br> <input name="name" type="text" placeholder="이름을 입력하세요">
								<br> <input name="address" type="text" placeholder="집주소를 입력하세요"> <br> 
								<input type="submit" value="JoinUs" class="button fit">
						</div>
							</form>
			</div>
					</header>


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