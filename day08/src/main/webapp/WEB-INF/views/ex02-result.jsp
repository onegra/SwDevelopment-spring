<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>${name }님은 ${age }세, ${adult }입니다</h3>
<p>
	<a href="${pageContext.request.contextPath }"><button>목록으로</button></a>
</p>
</body>
</html>