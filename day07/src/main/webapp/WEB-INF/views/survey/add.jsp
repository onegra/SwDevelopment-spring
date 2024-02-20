<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>추가</h3>
<form method="POST" enctype="multipart/form-data">
	<div><input type="text" name="title" placeholder="설문제목" required autofocus>
		<div style="display:flex;">
			<div>
				<div><input type="file" name="upload1" required></div>
				<div><input type="text" name="option1" placeholder="1" required></div>
			</div>
			<div>
				<div><input type="file" name="upload2" required></div>
				<div><input type="text" name="option2" placeholder="2" required></div>
			</div>
			<div><input type="submit" value="등록"></div>
		</div>
	
	</div>
</form>
</body>
</html>