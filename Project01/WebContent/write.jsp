<%@ page import="com.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!-- <script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.dropotron.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script> -->
	</head>
	<body class="homepage is-preload">
		<!-- Main -->
		<div class="container" align = "center">
			<div class="row">
				<form action="writeAction.jsp" method = "post">
					<table class="table table-striped" style="text-align: center; border : 2px solid#dddddd">
						<thead>
							<tr>
								<th colspan="2">게시판 글쓰기 양식</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type = "text"class="form-control" placeholder="글제목" name = "bbsTitle" maxlength="50"></td>
							</tr>
							<tr>
								<td><textarea class="form-control" placeholder="글내용" name = "bbsContent" maxlength="3000" style = "width : 170px; height : 350px;"></textarea></td>
							</tr>
						</tbody>
					</table>
					<input type = "submit" class = "btn btn-primary pull-right" value="글쓰기">
				</form>
			</div>
		</div>

	</body>
</html>