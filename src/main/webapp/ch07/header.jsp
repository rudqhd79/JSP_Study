<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>헤더입니다</h1>
	<%
	//title이라는 이름의 main.jsp 파일에서 name="title" 값을 가져왔다
	String title = request.getParameter("title");
	out.println(title);	//출력
	%>
</body>
</html>