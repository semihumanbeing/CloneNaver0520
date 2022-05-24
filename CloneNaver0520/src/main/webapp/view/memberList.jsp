<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="memberInfo" border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>성별</th>
			<th>생년월일</th>
		</tr>
		<tr>
			<c:forEach var="vo" items="${list}">
				<td>${vo.id}</td>
				<td>${vo.pwd}</td>
				<td>${vo.name}</td>
				<td>${vo.tel}</td>
				<td>${vo.gender}</td>
				<td>${vo.birthday}</td>
			</c:forEach>
		</tr>
	</table>

</body>
</html>