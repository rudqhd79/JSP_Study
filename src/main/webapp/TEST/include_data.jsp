<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>구구단 출력하기</h4>
<br />
	<%
		String a = request.getParameter("five");
		int b = Integer.parseInt(a);
		for (int i = 1; i < 10; i++) {
			out.println(b+"*" + i + "=" + b* i + "<br />");
		}
	%>
</body>
</html>