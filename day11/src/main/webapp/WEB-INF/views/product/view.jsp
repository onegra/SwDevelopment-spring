<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<section>
	<h3>상품번호 : ${dto.idx }</h3>
	<table border="1" cellpadding="10" cellspacing="0">
		<tr>
			<td>상품명</td>
			<td>${dto.name }</td>
		</tr>
		<tr>
			<td>상품 이미지</td>
			<td>
			<img src="${cpath }/upload/${dto.img }">
			</td>
		</tr>
		<tr>
			<td>가격</td>
			<td>${dto.price }</td>
		</tr>
		<tr>
			<td>상품 수량</td>
			<td>
			<button>-</button>
			${dto.amount }
			<button>+</button>
			</td>
		</tr>
	</table>
	<p>
		<a href="${cpath }/product/modify/${dto.idx}"><button>상품 수정</button></a>
		<a href="${cpath }/product/delete/${dto.idx}"><button>상품 삭제</button></a>
	</p>
	
	
	
</section>
</body>
</html>