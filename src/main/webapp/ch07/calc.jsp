<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
Calculator calc = new Calculator();
	<!-- jsp : 는 액션태그이며 액션태그의 useBean은 액션태그 중 하나이다. 의미는 객체를 생성한다는 의미를 가진다 -->
<!-- n1, n2, op의 모든 변수를 set으로 Calculator 클래스의 필드값에 저장된다 -->
calc.setN1(request.getParameter("n1"));	
calc.setN2(request.getParameter("n2"));
calc.setOp(request.getParameter("op"));
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>계산기 JSP</h2>
	<hr>
	<form method="post" action="/jsp_study/calc">	<!-- post는 숨겨서 보여준다, action은 경로를 지정해주는 것 -->
		<input type="text" name="n1" size="10" />
		<select name="op">
			<option>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select>
		<input type="text" name="n2" size="10" />
		<input type="submit" value="실행"/>
	</form>
</body>
</html>