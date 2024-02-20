<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	<h3>리뷰 작성</h3>
	<form method="POST" enctype="multipart/form-data">
		<p><input type="text" name="title" placeholder="title" required autofocus></p>
		<p><input type="hidden" name="writer" value="${login.userid }" readonly></p>
		<p><input type="file" name="upload" placeholder="image" required></p>
		<p><textarea name="content" placeholder="내용을 작성하세요"
						  style="resize: none; width: 600px; height: 200px;"></textarea></p>
		<p><input type="submit" value="작성 완료"></p>
	</form>
</section>

</body>
</html>