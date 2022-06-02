<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">

body{
  background-color: #F5F5F5;
}


#wrap {
	width: 460px;
	margin: auto;
	align-content: center;
}

#footer {
	
	height: 100px;
	margin: auto;
	align-content: center;
}

.sign_in{
	width: 460px;
	height: 60px;
	text-align: center;
	background-color: #00C73C;
	border: 0px;
	outline: 0px;
	font-size: 20px;
	color: white;
}

.bir_wrap{
	width: 100%;
	margin-bottom: 15px;
}

.bir_yy{
	width: 144px;
	display:inline-block;


}
.bir_mm{
	width: 154px;	
	display:inline-block;
	padding-left: 10px;
	
}
.bir_dd{
	width: 154px;	
	display:inline-block;
	padding-left: 10px;
}

#header {
	text-align: center;
	margin-top: 70px;

}

#content {
	margin-top: 50px;
}

h6{
	display: inline-block;
	color: gray;
}

</style>
<script type="text/javascript">
	
	function send(f){
		var id		= f.id.value.trim();
		var	pwd		= f.pwd.value.trim();
		var c_pwd	= f.c_pwd.value.trim();
		var name	= f.name.value.trim();
		var yy		= f.yy.value.trim();
		var mm		= f.mm.value.trim();
		var dd		= f.dd.value.trim();
		var gender	= f.gender.value.trim();
		var email	= f.email.value.trim();
		var	loc_no	= f.loc_no.value.trim();
		var tel		= f.tel.value.trim();
		
		
		if(dd < 10){
			dd='0'+dd;
		}
		
		
		var birthday = yy+'-'+mm+'-'+dd;
		
		console.log(birthday);
		
		if(id==''){
			alert('아이디를 입력하세요');
			f.id.value='';
			f.id.focus();
			return;
		}
		
		if(pwd==''){
			alert('비밀번호를 입력하세요');
			f.pwd.value='';
			f.pwd.focus();
			return;
		}
		
		if(c_pwd==''){
			alert('비밀번호를 입력하세요');
			f.c_pwd.value='';
			f.c_pwd.focus();
			return;
		
		}
		
		if(c_pwd!=pwd){
			alert('동일한 비밀번호를 입력하세요');
			f.c_pwd.value='';
			f.c_pwd.focus();
			return;
		}
		
		if(name==''){
			alert('이름을 입력하세요');
			f.name.value='';
			f.name.focus();
			return;
		}
		
		if(yy==''){
			alert('태어난 년도 4자리를 정확하게 입력하세요.');
			f.yy.value='';
			f.yy.focus();
			return;
		}
		if(mm=='월'){
			alert('태어난 월을 선택하세요.');
			return;
		}
		if(dd==''){
			alert('태어난 일(날짜) 2자리를 정확하게 입력하세요.');
			f.dd.value='';
			f.dd.focus();
			return;
		}
		
		if(gender=='성별'){
			alert('성별은 필수 정보입니다.');
			return;
		}
		
		if(tel==''){
			alert('전화번호는 필수 정보입니다.');
			f.tel.value='';
			f.tel.focus();
			return;
		}
		
		
		
		
		f.method="GET";
		f.action = "signup.do";
		f.submit();
		
	}


</script>


</head>
<body>


<div id="wrap">
	<form>
	<!-- 네이버 로고 -->
		<div id="header">	
			<a href="#"><img src="../img/naverlogo.png" width="300px"></a>
		</div>
		
		<div id="content">
			<div class="form-group">
			    <label for="inputlg">아이디</label>
			    <input class="form-control input-lg" id="id" name="id" type="text" maxlength="20">
			</div>
			<div class="form-group">
				<label for="inputlg">비밀번호</label>
				<input class="form-control input-lg" id="pwd" name="pwd" type="password">
			</div>
			<div class="form-group">
				<label for="inputlg">비밀번호 재확인</label>
				<input class="form-control input-lg" id="c_pwd"  type="password">
			</div>		
			<br>
			
			<div class="form-group">
			    <label for="inputlg">이름</label>
			    <input class="form-control input-lg" id="name" name="name" type="text" maxlength="20">
			</div>
			
			<!-- 생년월일 랩 -->
			<label for="inputlg">생년월일</label>
			<div class="bir_wrap">
			
				<div class="bir_yy">
				    <input class="form-control input-lg" name="yy" id="yy" type="text" placeholder="년(4자)" maxlength="4">
				</div>
				
				<div class="bir_mm">
				    <select class="form-control input-lg" name="mm" id="mm">
				    	<option>월</option>
				        <option>01</option>
				        <option>02</option>
				        <option>03</option>
				        <option>04</option>
				        <option>05</option>
				        <option>06</option>
				        <option>07</option>
				        <option>08</option>
				        <option>09</option>
				        <option>10</option>
				        <option>11</option>
				        <option>12</option>
					</select>
				</div>
				
				<div class="bir_dd">	
				    <input class="form-control input-lg" name="dd" id="dd" type="text" placeholder="일" maxlength="2">
				</div>
			
			</div>
			<!-- 생년월일 랩 -->
			
			<div class="form-group">
	      		<label for="sel3">성별</label>
		    	<select class="form-control input-lg" id="gender" name="gender">
			        <option>성별</option>
			        <option>남자</option>
			        <option>여자</option>
			        <option>선택안함</option>
				</select>
			</div>
			
			<div class="form-group">
			    <label for="inputlg">본인 확인 이메일</label><h6>(선택)</h6>
			    <input class="form-control input-lg" id="email" type="text" name="email" placeholder="선택입력">
			</div>
			
			<div class="form-group">
	      		<label for="sel3">휴대전화</label>
		    	<select class="form-control input-lg" id="loc_no">
			        <option >대한민국 +82</option>
			        <option>가나 +233</option>
			        <option>일본 +81</option>
			        <option>안드로메다 +2020</option>
				</select>
			</div>
			
			<div class="form-group">
			    <input class="form-control input-lg" id="tel" name="tel" type="text" placeholder="전화번호입력" maxlength="11">
			</div>
			
			<div>
				<input class="sign_in" type="button" value="가입하기" onclick="send(this.form);">
			</div>
			
		</div>
	
	</form>
	
	
	<div id="footer"></div>
</div>


</body>
</html>