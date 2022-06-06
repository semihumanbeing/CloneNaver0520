<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 : 로그인</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="../css/loginForm.css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript">
	function check(f) {
		let id = f.id.value.trim();
		let pwd = f.pwd.value.trim();

		if (id == '') {
			Swal.fire({
			  title:'아이디는 필수입력입니다.',
			  icon: 'error',
			  didClose: () =>{
				  f.id.value='';
				  f.id.focus();
			  }
			})
			return;
		}
		if (pwd == '') {
			Swal.fire({
			  title:'비밀번호는 필수입력입니다.',
			  icon: 'error',
			  didClose: () =>{
				  f.pwd.value='';
				  f.pwd.focus();
			  }
			})
			return;
		}
		// 로그인 가능여부 확인하기
		
		$.ajax({
			url:'logincheck.do',
			data: {
				'id':id,
				'pwd':pwd	
			},
			dataType:'json',
			success: function(result){
				if(result.result == true){
					location.href="mainpage.jsp";
				} else if(result.result == false){
					Swal.fire({
						  title:'아이디 혹은 비밀번호가<br>틀렸습니다!',
						  icon: 'error'
						})
						return;
				}
				
			},
			error:function(err){
				alert(err.responseText);
			}
			
		});

		

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