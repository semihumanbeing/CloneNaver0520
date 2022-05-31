<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보확인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
	
	#box{
		border: 1px solid #E1FFE1;
		background-color: #E1FFE1; 
		border-radius: 16px; 
		border-bottom: 16px; 
		box-shadow: insert 0 0 8px #deb13a;
		width: 500px;
		margin: auto;
		margin-top: 30px;
	
	}

	caption {
	
		text-align: center;
		font-weight: bold;
		color: black;
	}

 	 table {
		    width: 100%;
		    border-top: 1px solid #444444;
		    border-collapse: collapse;
		 	 }
 	
 	 th{
	 	 width: 150px;
		  padding: 10px;
		  font-weight: bold;
		  vertical-align: top;
		  border-right: 1px solid #ccc;
		  border-bottom: 1px solid #ccc;
		  border-top: 1px solid #fff;
		  border-left: 1px solid #fff;
		  
 	 
 	 } 
 	 
 	 td {
	 
	    border-left: 1px solid #444444;
	    padding: 10px; 
 	 }
	  th:first-child, td:first-child {
	    border-left: none;
	   
	  }   
	  
	  button {
	  width: 140px;
	  height: 45px;
	  font-family: 'Roboto', sans-serif;
	  font-size: 11px;
	  text-transform: uppercase;
	  letter-spacing: 2.5px;
	  font-weight: 500;
	  color: #000;
	  background-color: #fff;
	  border: none;
	  border-radius: 45px;
	  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	  transition: all 0.3s ease 0s;
	  cursor: pointer;
	  outline: none;
	  }
	
	button:hover {
	  background-color: #2EE59D;
	  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	  color: #fff;
	  transform: translateY(-7px);
	}
			  
		
</style>

</head>
<body>

<div id="box">

<table class="table table-striped">
<c:forEach var="vo" items="${ list }">
 <caption>💚💚회원정보확인💚💚</caption>
 	 <tr>
		<th>이름</th>
		<td>${ vo.name }</td>
	</tr>
	<tr>	
		<th>아이디</th>
		<td>${ vo.id }</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td>${ vo.pwd }</td>
	</tr>
	<tr>
		<th>성별</th>
		<td>${ vo.gender }</td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td>${ vo.tel }</td>
	</tr>
	<tr>
		<th>생일</th>
		<td>${ vo.birthday }</td>
	</tr>
	
</c:forEach>

<tr>
	<td colspan="2" align="center">
			<input type="button" value="돌아가기" 
			onclick="location.href='homepage.jsp';">
	</td>
</tr>

</table>
</div>
</body>
</html>