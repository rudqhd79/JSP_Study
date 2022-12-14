<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	/* 페이지를 이동하는 것은 forward와 같으나 새로운 페이지처럼 request와 response 값이 유지가 되지 않는다 */
	/* response_sendRedirect로 페이지를 이동하면 아이디와 패스워드 값이 null로 뜰 것이다 */
	response.sendRedirect("page_control_end.jsp");
%>
</body>
</html>