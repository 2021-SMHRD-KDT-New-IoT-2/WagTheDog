<%@ page import="com.model.MemberVO"%>
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
						<h2>PRODUCT</h2>						
						<p>���Ļ�� ������ < > �� �Ұ��մϴ�!</p>								
						</header>								
						</article>	
					</div>
					
				</div>
				<div class="wrapper style1">

					<section id="features" class="container special">
						<header>
							<h2>�̷��� ����� �� �־��</h2>
							<p>������ �������� ���ϰ� ����ؿ�</p>
						</header>

						<div class="row">
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/pic07.jpg" alt="" /></a>
								<header>
									<h3><a href="#">��Ḧ ����ּ���</a></h3>
								</header>			
						</article>
						<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/pic08.jpg" alt="" /></a>
								<header>
									<h3><a href="#">��ư�� �����ּ���</a></h3>
								</header>
							</article>
							<article class="col-4 col-12-mobile special">
								<a href="#" class="image featured"><img src="images/pic09.jpg" alt="" /></a>
								<header>
									<h3><a href="#">�츮���̰� �� �Ծ����� Ȯ���ϼ���</a></h3>
								</header>
							</article>	
						</div>

						<br>
						<br>
						<br>
						<br>
						<br>

					</section>

				</div>
					<!-- Banner -->
				<section id="banner">
					<header>
						<h2>���Ļ�� ������ with <strong>Wag The Dog</strong></h2>
						<p>
							<h3>���Ļ�� ���ñ��</h3>
						</p>
					</header>
				</section>

			<!-- Carousel -->

				<section class="carousel">
					<div class="reel">

						<article>
							<a href="http://www.mdtoday.co.kr/mdtoday/index.html?no=423051" class="image featured"><img src="images/art01.jpg" alt="" /></a>
							<header>
								<h3><a href="http://www.mdtoday.co.kr/mdtoday/index.html?no=423051">���͸���</a></h3>
							</header>
							<p>���� ������������� ���� ���� ĵ���� ��� ���̴������ɾ ���
							<br>  </p>
						</article>
					<article>
						<a href="https://www.news1.kr/articles/?2465580" class="image featured"><img src="images/art02.jpg" alt="" /></a>
							<header>
								<h3><a href="https://www.news1.kr/articles/?2465580">����</a></h3>
							</header>
							<p>�ǻ�� vs ���� ���
							<br>�ݷ����� ���� �ùٸ� ������?</p>
						</article>
						<article>
							<a href="https://www.hankookilbo.com/News/Read/201510232048933581" class="image featured"><img src="images/art03.jpg" alt="" /></a>
							<header>
							<h3><a href="https://www.hankookilbo.com/News/Read/201510232048933581">������ �ǰ��� �����Ѵٸ�?</a></h3>
							</header>
							<p>������� Į�θ�����
							<br>
							�Ĳ��ϰ� ������ ��ἱ��</p>	
						</article>

						<article>
							<a href="https://www.news1.kr/articles/?3272428" class="image featured"><img src="images/art04.jpg" alt="" /></a>
							<header>
								<h3><a href="https://www.news1.kr/articles/?3272428">���Ļ�ᰡ ���� �����?</a></h3>
							</header>
							<p>�츮���� �ǰ�������
							<br>
							 �����ϰ� �����ؿ�</p>

						</article>
						<article>
							<a href="https://sisunnews.co.kr/news/articleView.html?idxno=135950" class="image featured"><img src="images/art05.jpg" alt="" /></a>
							<header>
								<h3><a href="https://sisunnews.co.kr/news/articleView.html?idxno=135950">�ùٸ� ���м��� ���</a></h3>
							</header>
							<p>�ݷ����� ���м���
							<br>
							 ���� ��</p>
						</article>
					</div>
				</section>
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