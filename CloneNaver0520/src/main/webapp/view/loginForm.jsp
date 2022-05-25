<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 : 로그인</title>
<link rel="stylesheet" href="../css/loginForm.css">
</head>
<body>
	<div id="wrap">
		<div id="logo">
			<a href="homepage.jsp"><img src="../img/naverlogo.png" width="300px"></a>
		</div>
		<br>
		<form>
			<div>
				<input class="login" type="text" placeholder="아이디" name="id"><br>
				<input class="login" type="text" placeholder="비밀번호" name="pwd">
			</div>
			<div id="btn">
				<a href="loginAction.do"><img src="../img/minilogin.png" width="390px"
					height="50px" onclick="alert('되나')"></a>
			</div>
		</form>
	</div>
</body>
</html>