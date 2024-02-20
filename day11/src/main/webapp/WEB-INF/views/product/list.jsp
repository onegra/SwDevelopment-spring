<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<style>
	table {
	border: 2px solid black;
	border-collapse: collapse;
	}
	th, td {
	padding: 5px 10px;
	border: 1px solid grey;
	}
</style>
<h3>상품 목록</h3> 
<table>
<thead>
  <tr>
    <th>번호</th>
    <th>상품명</th>
    <th>상품 이미지</th>
    <th>가격</th>
    <th>상품 수량</th>
  </tr>
</thead>
 
 <tbody>
<c:forEach var="dto" items="${list }">
	<tr>
		<td>${dto.idx }</td>
    	<td>
    	<a href="${cpath }/product/view/${dto.idx}">${dto.name }</a>
    	</td>
    	<td>${dto.img }</td>
    	<td>${dto.price }</td>
    	<td>${dto.amount }</td>
  	</tr>
</c:forEach>
 </tbody>
</table>

<div>
	<div></div>
	<div>
		<a href="${cpath }/product/add"><button>새 상품 등록</button></a>
	</div>
</div>

</head>
<body>

</body>
</html>