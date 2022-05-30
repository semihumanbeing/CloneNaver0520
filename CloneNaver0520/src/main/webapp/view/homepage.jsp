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
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
	// 2. 카카오 초기화
	Kakao.init('74225eda86e41f228d0a79bee33cbbc0');
	console.log(Kakao.isInitialized()); // 초기화 판단여부

	// 3. 데모버전으로 들어가서 카카오로그인 코드를 확인.
	function loginWithKakao() {
		Kakao.Auth.login({
			success : function(authObj) {
				console.log(authObj); // access토큰 값
				Kakao.Auth.setAccessToken(authObj.access_token); // access토큰값 저장
				getInfo();
			},
			fail : function(err) {
				console.log(err);
			}
		});
	}

	// 4. 엑세스 토큰을 발급받고, 아래 함수를 호출시켜서 사용자 정보를 받아옴.
	function getInfo() {
		Kakao.API
				.request({
					url : '/v2/user/me',
					success : function(res) {
						console.log(res);
						var id = res.id;
						var gender = res.kakao_account.gender;
						var nickname = res.kakao_account.profile.nickname;
						var birthday = res.kakao_account.birthday;

						console.log(id, nickname, gender, birthday);
						location.href='kakaologin.do?id='+id+'&nickname='+nickname+'&gender='+gender+'&birthday'+birthday;
						
					},
					fail : function(error) {
						alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.'
								+ JSON.stringify(error));
					}
				});
	}

	// 5. 로그아웃 기능 - 카카오 서버에 접속하는 엑세스 토큰을 만료, 사용자 어플리케이션의 로그아웃은 따로 진행.
	function kakaoLogout() {
		if (!Kakao.Auth.getAccessToken()) {
			alert('Not logged in.');
			return;
		}
		Kakao.Auth.logout(function() {
			alert('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken());
		});
	}
</script>
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
		<br> <a id="custom-login-btn" href="javascript:loginWithKakao()"><br>
			<img
			src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
			width="300" alt="카카오 로그인 버튼" />
		</a>
		</div>
		
		<div id="signup">
			<a href="signupForm.do">회원가입</a>
		</div>
	</div>
</body>
</html>