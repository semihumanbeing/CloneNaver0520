<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 : 로그인</title>
<link rel="stylesheet" href="../css/loginForm.css">
<script type="text/javascript">
	function check(f) {
		let id = f.id.value.trim();
		let pwd = f.pwd.value.trim();

		if(id==''){
			alert('아이디는 필수입력입니다.');
			f.id.focus();
			return;
		}
		if(pwd==''){
			alert('비밀번호는 필수입력입니다.');
			f.pwd.focus();
			return;
		}
		
		f.method="GET";
		f.action="login.do"
		f.submit();

	}
</script>
</head>
<body>
	<div id="wrap">
		<div id="logo">
			<a href="homepage.jsp"><img src="../img/naverlogo.png"
				width="300px"></a>
		</div>
		<br>
		<form>
			<div>
				<input class="login" type="text" placeholder="아이디" name="id"><br>
				<input class="login" type="password" placeholder="비밀번호" name="pwd">
			</div>
			<div id="btn">
				<button type="button" onclick="check(this.form);">
					<img src="../img/minilogin.png" width="390px" height="50px">
				</button>
			</div>
		</form>
	</div>
</body>
</html>