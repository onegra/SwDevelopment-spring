<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day07</title>
</head>
<body>
<header>
	<h1><a href="${cpath }">day07</a></h1>
	<nav>
		<ul>
			<li><a href="${cpath }/member/login">로그인</a></li>
			<li><a href="${cpath }/survey/add">설문등록</a></li>
			 <li><a href="${cpath }/survey/list">설문목록</a></li>
		</ul>
	</nav>
</header>
</body>
</html>