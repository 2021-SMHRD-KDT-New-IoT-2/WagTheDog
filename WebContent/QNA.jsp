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
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="homepage is-preload">
		<!-- Main -->
		<div class="container">
			<div class="row" align = "center">
				<table class="table table-striped" style="text-align: center; border : 2px solid#dddddd">
					<thead>
						<tr>
							<th scope = "col">글번호</th>
							<th scope = "col">제목</th>
							<th scope = "col">작성자</th>
							<th scope = "col">작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
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

