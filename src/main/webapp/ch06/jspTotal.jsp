<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>jsp 종합예제</h2>
	<hr>
	<!-- html용 주석 -->
	<%-- %! : 선언태그: 멤버 변수, 메소드 선언 --%>
	<%!
		String[] members = {"김하서", "김길동", "김사랑", "박사랑"};
		int num1 = 10;
		
		int calc(int num2) {
			return num1 + num2;
		}
			
	%>
	<h3>
										  <!-- %= : 표현태그 -->
	1. calc(10) 메소드 실행 결과: <%=calc(10)  %>
	<br />
	2. num1변수 출력: <%=num1 + 1 %>	<!-- num1의 결과 -->
	</h3>
	<hr>
	<%-- 스크립트릿 태그 : 모든 자바 코드 --%>
	<ul>
		<% for(String name : members) { %>
			<li><%= name  %></li>
		<% } %>
	</ul>
	<hr>
	<ul>
		<%
		for (String name : members) {
			out.println("<li>" + name+ "</li>");	
		}
			%>
	</ul>
	<hr>
	<%@ include file="../hello.jsp" %>	<%-- 파일 넣기 (통째로 실행됨) --%>
	<hr>
	<% Date day = new Date(); %>	<%-- Date타입의 day는 새로운 객체를 생성하여 현재의 날짜와 시간을 알 수 있다 --%>
	 현재 날짜:  <%= day %>,
	 5의 제곱:  <%= Math.pow(5, 2) %>
	
	
	
	
</body>
</html>