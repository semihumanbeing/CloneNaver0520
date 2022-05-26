<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="../css/homepage.css">

<title>NAVER</title>
</head>
<body>
	<div id="wrap">
		<div id="logo">
			<a href="#"><img src="../img/naverlogo.png" width="300px"></a>
		</div>
		<br>
		<form>
			<div>
				<input id="search" type="text" placeholder="믿어주세요...저는 네이버입니다."
					style="float: left;" name="keyword">
				<button id="btn" type="button" style="float: left" onclick="alert('검색 기능은 지원하지 않습니다!!!');">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</div>
		</form>
		<div id="main">
			<a href="loginForm.do"><img src="../img/login.png" width="300px"></a>
		</div>
		<div id="signup">
			<a href="signupForm.do">회원가입</a>
		</div>
	</div>
</body>
</html>