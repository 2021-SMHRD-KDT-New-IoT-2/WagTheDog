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
						
						<h2><a href="#">ȸ������</a></h2>
								<p>
								Wag The Dog�� ������ �Ǿ��ּ���
								</p>
							</header>
							
							<header>
							<div id="joincss">
								<form action = "JoinService" method = "post">
									
									<input name="id" id="input_id" type="text" placeholder="ID�� �Է��ϼ���">
									<br>
									<input type="button" value="ID�ߺ�üũ" onclick="idCheck()"><br>
										
									<span id="sp_result"></span>
									
									<br><input name="pw" type="password" placeholder="PW�� �Է��ϼ���">
									<br>
									<input name="name" type="text" placeholder="�̸��� �Է��ϼ���">
									<br>
									<input name="address" type="text" placeholder="���ּҸ� �Է��ϼ���">
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
				//����� ���� ���� ������ ���� ���
				//1. innerText : �±׻��̿� �ؽ�Ʈ�� ������ ���� ��� 
				//ex ) <p><span>����Ʈ�׸���</span></p> -> ����Ʈ�׸���
				//2. innerHTML : �±׻��̿� ��� ��Ҹ� ������ ���� ���
				//ex) <p><span>SP</span></p> -> <span>SP</span>
				//3. value : input�±׿� value �Ӽ����� ������ �� �� ����ϴ� ���
				
				var input = document.getElementById("input_id");
				//alert(input.value); // ���� js�� ��� => banilla js
				//input�� value�� �������� ���� ���
				
				//alert($('#input_id').val()); //jquery���
				
				//ajax
				$.ajax({
					type : "post", //������ ����(��û)���
					data : {"id" : input.value}, //�����ϴ� ������
					url : "IdCheckService", //�����͸� �����ϴ�(��û�ϴ�) ���������� url
					dataType : "text", //���䵥������ ����
					success : function(data){
						var sp_result = document.getElementById("sp_result");
						//alert(data)	
						if(data=="true"){
							sp_result.innerText = "��� �Ұ����� ���̵�";
						}else{
							$("#sp_result").text("��� ������ ���̵�");
						}
					},
					error : function(){
						alert("��Ž���");
					}
				});
				
			}
			
			
			</script>
</body>
</html>