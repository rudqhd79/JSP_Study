<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 4-1-1 : 선언문 태그에 문자형 전역변수를 선언하여 'Hello,Java Server Pages'를 저장합니다. -->
<!-- 4-1-2 : 문자형 변수 값을 반환하는 전역 메소드 getString()을 작성합니다. -->
<!-- 4-1-3 : getString() 메소드를 호출하여 문자형 변수 값을 출력합니다. -->
	<%!
		public static String a = "Hello,Java Server Pages";
	
		public static String getString() {
			return a;
		}
	%>
	<h3>
		실행 결과 : <%= getString() %>
	</h3>
<!-- 4-2 : 결과 확인 -> OK -->
</body>
</html>

<!--  
<%-- 
	1. 스크립트 요소 3가지 : 첫번째. <%! %> 선언 태그
										 두번째. <%= %> 표현 태그
										 세번째. <% %> 스크립트릿 태그
	2. 선언문 태그와 스크립트릿 태그의 차이점을 서술하시오
	답 : 선언문 태그는 메소드와 매개변수에만 쓰이는 반면에
		  스크립트릿 태그는 자바에 관한 모든 것에 쓰인다
	3. 애플리케이션 실행 결과에는 보이지 않는 JSP 주석 표기법은 무엇인가?
	답 : JSP 주석 표기법은 <%--  --%>이다
	4. 선언문 태그를 이용하여 다음 조건에 맞게 JSP 애플리케이션을 만들고 실행 결과를 확인하시오 --%>
	-->