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
	<h2>상품목록</h2>
	<hr>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>상품명</th>
			<th>가격</th>
		</tr>
		<!-- th 아래의 내용들은 for문을 이용하여 작업한다 -->
		<!-- for(Product p : products)와 같다 -->
		<c:forEach varStatus="i" var="p" items="${products}">
		<tr>
			<!-- count는 1부터 시작( -->
			<td>${i.count}</td>
			<!-- get방식으로 작성(주소목록 노출) -->
			<td><a href="/jsp_study/pcontrol?action=info&id=${p.id}">${p.name}</a></td>
			<td>${p.price}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>