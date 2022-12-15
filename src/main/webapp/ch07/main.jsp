<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- jsp:include는 현재 넣어 있는 주소가 통째로 실행되는 것이다 -->
	<jsp:include page="header.jsp" >
	<!-- jspLparam은 파라미터 값을 추가하거나 수정하는 것이다 -->
		<jsp:param value="My home" name="title" />
	</jsp:include>
</body>
</html>