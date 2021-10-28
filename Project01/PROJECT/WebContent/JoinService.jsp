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
<body>
			<div id="page-wrapper">
				<!-- Header -->
				<div id="header">

					<!-- Nav -->
					
						<nav id="nav">
						<a href="Main.html"><img src="images/logoimg.png" width="75px" height="75px"></a>
							<ul>
								<li>
									<a href="#"><strong>Communicate</strong></a>
									<ul>
										<li><a href="#">Notice</a></li>
										<li><a href="#">FAQ</a></li>
										<li><a href="#">QNA</a></li>
										<li>
											<a href="#">And a submenu &hellip;</a>
											<ul>
												<li><a href="#">Lorem ipsum dolor</a></li>
												<li><a href="#">Phasellus consequat</a></li>
												<li><a href="#">Magna phasellus</a></li>
												<li><a href="#">Etiam dolore nisl</a></li>
											</ul>
										</li>
										<li><a href="#">Veroeros feugiat</a></li>
									</ul>
								</li>
								<li><strong><a href="left-sidebar.html">Web CARE</strong></a></li>
								<li><strong><a href="right-sidebar.html">PRODUCT</strong></a></li>
								<li><strong><a href="no-sidebar.html">Who WE ARE</strong></a></li>
							</ul>
						</nav>

				</div>
				<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<article id="main" class="special">
						<header>
						
						<h2><a href="#">회원가입</a></h2>
								<p>
								Wag The Dog의 가족이 되어주세요
								</p>
							</header>
							
							<header>
							<div id="joincss">
								<form action = "JoinService" method = "post">
									
									<input name="id" id="input_id" type="text" placeholder="ID를 입력하세요">
									<br>
									<input type="button" value="ID중복체크" onclick="idCheck()"><br>
										
									<span id="sp_result"></span>
									
									<br><input name="pw" type="password" placeholder="PW를 입력하세요">
									<br>
									<input name="name" type="text" placeholder="이름을 입력하세요">
									<br>
									<input name="address" type="text" placeholder="집주소를 입력하세요">
									<br>
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
				//요소의 실제 값을 가지고 오는 방법
				//1. innerText : 태그사이에 텍스트를 가지고 오는 방법 
				//ex ) <p><span>스마트그리드</span></p> -> 스마트그리드
				//2. innerHTML : 태그사이에 모든 요소를 가지고 오는 방법
				//ex) <p><span>SP</span></p> -> <span>SP</span>
				//3. value : input태그에 value 속성값을 가지고 올 때 사용하는 방법
				
				var input = document.getElementById("input_id");
				//alert(input.value); // 순수 js만 사용 => banilla js
				//input의 value를 가져오기 위해 사용
				
				//alert($('#input_id').val()); //jquery사용
				
				//ajax
				$.ajax({
					type : "post", //데이터 전송(요청)방식
					data : {"id" : input.value}, //전송하는 데이터
					url : "IdCheckService", //데이터를 전송하는(요청하는) 서버페이지 url
					dataType : "text", //응답데이터의 형식
					success : function(data){
						var sp_result = document.getElementById("sp_result");
						//alert(data)	
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