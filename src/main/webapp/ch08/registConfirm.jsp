<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>고객목록</h2>
	<hr>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>등급</th>
		</tr>
		<!-- th 아래의 내용들은 for문을 이용하여 작업한다 -->
		<!-- for(Regist r : regist)와 같다 -->
		<c:forEach varStatus="i" var="r" items="${regist}">
			<tr>
				<!-- count는 1부터 시작( -->
				<td>${i.count}</td>
				<!-- get방식으로 작성(주소목록 노출) -->
				<td><a href="/jsp_study/rc?action=info2&id=${r.id}">${r.name}</a></td>
				<td>${r.phone}</td>
				<td>${r.grade}${r.korea}</td>
			</tr>
		</c:forEach>
	</table>
	<button type="submit"><a href="/jsp_study/rc?action=list">등급지우기</a></button>
</body>
</html>