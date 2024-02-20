<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>오늘은 ${today }입니다</h3>
<ul>
	<li><a href="${cpath }/ex01">ex01 예외처리 함수 만들기</a></li>
	<li><a href="${cpath }/ex02">ex02 예외처리 스프링 빈 만들기</a></li>
</ul>
</body>
</html>