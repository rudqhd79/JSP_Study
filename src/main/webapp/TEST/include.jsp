<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 1. <h4> 태그에 '구구단 출력하기'를 작성합니다. -->
	<!-- 1-1. 구구단을 출력하는 include_data 파일로 이동하도록 작성합니다. -->
	<!-- 1-2. param 액션 태그로 숫자 5를 출력하는 include_date 파일에 전달하도록 작성합니다. -->
	<jsp:forward page="include_data.jsp">
		<jsp:param value="5" name="five" />
	</jsp:forward>
</body>
</html>