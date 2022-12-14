<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>	<!-- 5-1 답 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 5 : 스크립트릿 태그를 이용하여 다음 조건에 맞게 JSP 애플리케이션을 만들고 실행 결과를 확인하시오 -->
	<!-- 5-1 : scriptlet.jsp 파일 생성 후 java.util.Date형 지역변수에 현재 날짜를 저장합니다, 웹 브라우저에 결과를 확인합니다 -->
	<!-- 5-2 : 웹 브라우저에 결과를 확인합니다 -> OK -->
	<h3>
		<%Date date = new Date(); %>
		Current Time : <%= date %>
	</h3>
</body>
</html>