<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<style>
	h3 {
	width: 900px;
	margin: auto;
	}
	table {
	border: 2px solid black;
	border-collapse: collapse;
	}
	th, td {
	padding: 5px 10px;
	border: 1px solid grey;
	}

</style>
<h3><a href="${cpath }/review/list">리뷰 목록</a></h3>
<section>
	<table>
<thead>
  <tr>
    <th>번호</th>
    <th>리뷰 제목</th>
    <th>작성자</th>
    <th>작성일</th>
  </tr>
</thead>
 
 <tbody>
<c:forEach var="dto" items="${list }">
	<tr>
		<td>${dto.idx }</td>
    	<td>
    	<a href="${cpath }/review/view/${dto.idx}">${dto.title }</a>
    	</td>
    	<td>${dto.writer }</td>
    	<td><fmt:formatDate value="${dto.writeDate }" pattern="yyyy.MM.dd hh:mm:ss"/></td>
  	</tr>
</c:forEach>
 </tbody>
</table>
<c:if test="${not empty login }">
<p>
	<a href="${cpath }/review/write/${dto.idx}"><button>리뷰 작성</button></a>
</p>
</c:if>
</section>



</body>
</html>