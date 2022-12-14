<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>	<!-- 6-1 답 -->
<%@ page import="java.util.*" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 6 : 표현문 태그를 이용하여 다음 조건에 맞게 JSP 애플리케이션을 만들고 실행 결과를 확인하시오 -->
	<!-- 6-1 : 표현문 태그에 java.util.Calendar 클래스를 이용하여 현재 시간을 출력합니다.(date 사용 가능) -->
	<!-- 6-2 : 웹 브라우저에 결과를 확인 합니다. -> OK -->
	<h2>
	<% Date cal = Calendar.getInstance().getTime(); %>
	Current Time : <%= cal %>
	</h2>
</body>
</html>