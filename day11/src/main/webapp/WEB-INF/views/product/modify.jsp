<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	<h3>상품 수정</h3>
	<form method="POST">
		<p><input type="text" name="name" placeholder="name" value="${dto.name }" required autofocus></p>
		<p><input type="text" name="img" placeholder="img" value="${dto.img }" required></p>
		<p><input type="number" name="price" placeholder="price" value="${dto.price }" required></p>
		<p><input type="number" name="amount" placeholder="amount" value="${dto.amount }" required></p>
		<p><input type="submit" value="상품 수정"></p>
	</form>
</section>

</body>
</html>