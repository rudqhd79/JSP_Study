<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>


<!-- jsp:forward는 request와 response 객체를 포함에 다음 페이지로 정보를 보낸다 -->
<!-- form 태그 방식과는 다르게 정보를 넘기는 방식이다 -->
<!-- page_control_end.jsp 파일로 정보가 이동한다 -->
	<jsp:forward page="page_control_end.jsp">
	<!-- jsp:param은 액션 사용 시 파라미터 값을 추가하거나 수정한다 -->
		<jsp:param value="000-3333-3333" name="tel" />
	</jsp:forward>
</body>
</html>