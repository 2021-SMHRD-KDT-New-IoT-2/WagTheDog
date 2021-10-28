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
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body class="homepage is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="Main.html" id="logo">Wag the Dog</a></h1>
								
							</header>
							
							<!-- 로그인  -->
							<footer>
							<form action = "LoginService" method="post">
                              <input name="id" type="text" placeholder="ID를 입력하세요"><br>
                              
                              <input name="pw" type="password" placeholder="PW를 입력하세요"><br>
                           
                              <input type="submit" value="Login" class="button fit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <input type="button" onclick="location.href='JoinService.jsp'" value="Join" class="button fit">
                           </form>
                           
                    		</footer>
						</div>

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
				<div class="wrapper style2">
					<article id="main" class="container special">
						<a href="#"><img src="images/calendarimage.png" alt="" /></a>
						<header>
							<h2><a href="#">캘린더를 이용한 웹케어</a></h2>
							<p>
								반려동물의 급여시간, 급여횟수, 급여확인까지 한번에!
							</p>
						</header>

						<footer>
							<a href="WebCare.jsp" class="button">Web Care 바로가기!</a>
						</footer>
					</article>
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