<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	/* 현재 <!-- <% 는 스크립트릿 태그이다 (자바의 모든 것을 쓸 수있다)--!>*/
	int n1 = Integer.parseInt(request.getParameter("n1"));	/* 변수 n1은 int형변환 된 request.getParameter("n1") */ /* request.getParameter();는 다른 파일에서 이름을 가져와야 한다 */
	int n2 = Integer.parseInt(request.getParameter("n2"));
	System.out.println("n1:  " + n1);
	System.out.println("n2:  " + n2);
	
	String op = request.getParameter("op");	
	System.out.println("op:  " + op);
	
	long result = 0;
	
	switch(op) {
	case "+" : result = n1 + n2; break;
	case "-" : result = n1 - n2; break;
	case "*" : result = n1 * n2; break;
	case "/" : result = n1 / n2; break;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	결과:  <%= result %>
</body>
</html>