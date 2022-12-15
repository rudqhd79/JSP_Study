<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	<!-- JSTL할 때에는 이 문구를 적어줘야 한다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSTL 종합예제</h2>
	<hr>
	<h3>set, out</h3>
	
	<!-- pageScope영역에 저장된다 -->
	<!-- SET -->
	<c:set var="product1" value="<b>애플아이폰</b>" />	<!-- set은 값을 넣어주는 것이다 product1의 값은 <b>애플아이폰</b>이다 -->
	<c:set var="product2" value="삼성 갤럭시 노트" />
	<c:set var="intArray" value="${[1, 2, 3, 4, 5]}" />	<!-- 현재 product3의 값은 배열 1~5이다(EL 방식) -->
		<!-- 현재 product3의 에러는 이클립스 자체의 에러기 때문에 무시해도 된다 -->
		
	<!-- OUT -->
	<p>
	<!-- escapeXml은 태그를 문자열로 출력한다, 기본적으로는 false지만 true를 줌으로써 폰트가 bold로 나온다 -->
	<!-- default="Not registered" 아무것도 없을 때 써주는 것 -->
	product1(jstl) : <c:out value="${product1}" default="Not registered" escapeXml="true" />
	</p> <!-- 값을 가져 올때는 value에 출력하고 싶은 싶은 var를 넣으면 된다 -->
	<p>product1(el): ${product1}</p>
	<p>intArray[2]: ${intArray[2]}</p>
	<hr>
	<h3>forEach 배열 출력</h3>
	<ul>
		<!-- forEach문 = 향상된 for문 -->
		<!-- varStatus는  i로 표현하였다 -->
		<c:forEach var="num" varStatus="i" items="${intArray}">	<!-- for(int num : intArray)  -->
			<li>${i.index} : ${num}</li>
		</c:forEach>
	</ul>
	<hr>
	<h3>if</h3>
	<c:set var="checkout" value="true" />
	<c:if test="${checkout}">
		<p>주문 제품: ${product2}</p>
	</c:if>
	
	<c:if test="${!checkout}">
		<p>주문 제품 아님</p>
	</c:if>
	
	<!-- empty는 product2에 값이 있는지 없는지 확인 -->
	<c:if test="${!empty product2}">
		<b>${product2}가 이미 있음</b>
	</c:if>
	
	<hr>
	<h3>choose, when, otherwise</h3>
	<c:choose>
		<c:when test="${checkout}">
			<p>주문 제품: ${product2}</p>
		</c:when>
		<c:otherwise>
			<p>주문 제품 아님</p>
		</c:otherwise>
	</c:choose>
	<hr>
	<h3>forTokens</h3>
	
	<!-- switch 문과 비슷하다 -->
	<c:choose>
		<c:when test="${checkout}">
			<p>주문 제품: ${product2}</p>
		</c:when>
		<c:otherwise>
			<p>주문 제품 아님</p>
		</c:otherwise>
	</c:choose>
	<!-- forTokens는 for문이 자동으로 돌게끔 된다 items는 배열의 내용이라고 보면 된다 -->
	<!-- delims는 공백이나 특정 문자를 무시한다는 의미이다 -->
	<c:forTokens var="city" items="Seoul / Tokyo / New York / Toronto" delims="/" varStatus="j">
		<c:if test="${j.first}">	<!-- index가 첫번째면 true를 반환한다 현재 도시목록 : ${city}를 첫번째에만 뽑는다 -->
		도시목록 :
		${city}
		</c:if>
		
		<c:if test="${!j.last}"> , ${city} </c:if>	<!-- index가 마지막이 아니면 true를 반환한다 -> 마지막이 되기 전까지 "," 을 찍는다 -->
		<c:if test="${j.last}"> , ${city} </c:if>
	</c:forTokens>
	
	
	
	
</body>
</html>