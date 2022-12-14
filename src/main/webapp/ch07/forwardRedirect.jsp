<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- forward action 칸을 입력하면 forward_action.jsp파일로 연결된다 -->
	<form method="post" action="forward_action.jsp">	
	<!-- method="post"는 get방식도 있다 -->
	<!-- get방식은 데이터가 한정적이며, 작은 양의 페이지 연결이 목적일 때 쓰인다. 특히 보안에 취약하여 보안이 필요한 곳에 쓰이면 안된다 -->
	<!-- post방식은 데이터가 방대하여 여러 프로그램이 연결 될 때 쓰인다. 주소목록이 보이지 않으며 보안성이 좋다. -->
	<!-- action은 form 태그로 다른페이지로 연결 할때 쓰인다. -->
		forward action : <input type= "text" name="username" />
		<input type="submit" value="확인" />
	</form>
	
<!-- sendRedirect 칸을 입력하면 response_sendRedirect.jsp 파일로 연결된다 -->
	<form method="post" action="response_sendRedirect.jsp">
		sendRedirect action : <input type= "text" name="username" />
		<input type="submit" value="확인" />
	</form>
	
</body>
</html>