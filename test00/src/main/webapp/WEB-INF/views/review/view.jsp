<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	<table border="1" cellpadding="10" cellspacing="0">
		<tr>
			<td>제목</td>
			<td>${dto.title }</td>
		</tr>
		<tr>
			<td>리뷰</td>
			<td>
			<img src="${cpath }/upload/${dto.image }">
			</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${dto.content }</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${dto.writer }</td>
		</tr>
		<tr>
			<td>작성일</td>
			<td><fmt:formatDate value="${dto.writeDate }" pattern="yyyy.MM.dd hh:mm:ss"/></td>
		</tr>
	</table>
	<p>
		<a href="${cpath }/review/delete/${dto.idx}"><button>리뷰 삭제</button></a>
	</p>

	
</section>
</body>
</html>