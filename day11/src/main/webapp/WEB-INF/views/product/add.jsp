<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	<h3>상품 추가</h3>
	<form method="POST" enctype="multipart/form-data">
		<p><input type="text" name="name" placeholder="name" required autofocus></p>
		<p><input type="file" name="upload" placeholder="img" required></p>
		<p><input type="number" name="price" placeholder="price" required></p>
		<p><input type="number" name="amount" placeholder="amount" required></p>
		<p><input type="submit" value="상품 추가"></p>
	</form>
</section>

</body>
</html>