<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<style>
	p{
	text-align: center;
	}
	.main {
	background-color: #141517;}
	.title {
	height: 300px;
	border: 1px solid black;
	}
	.lol {
	font-size: 30px;
	text-align: center;
	font-weight: 700;
	color: #5e7fea;
	}
	.mvp {
	font-weight: 700;	
	text-align: center;
	color: #fff;
	display: block;
	font-size: 50px;
	} 
	.sub_title {
	border: 1px solid black;
	}
	.season {
	color: #a0a5b6;
	
	}
	tr, td, th {
		border: 1px solid white;
	}
	table {
		border-collapse: collapse;
		text-align: center;
		font-size: 80px;
		margin: 180px;
	}
</style>
<div class="main">
	
	<div class="title">
		<p><input type="color"></p>
		<p class="lol">2024 LoL 챔피언스 코리아 스프링</p>
		<span class="mvp">MVP</span>
		<p style="color: #858894;" >팬들이 직접 선정한 매치 MVP 입니다.</p>
	</div>
	<div class="sub_title">
		<div class="season">2024 LCK Spring 정규시즌 2R</div>
		 <span class="day">03월 10일 일요일 17:00</span>
	</div>
	<table class="teamlist">
		<thead>
		<c:forEach var="dto" items="${list }"/>
		<!-- 경기 일정에서 가져와야함(db미구현) -->
			 <tr>
			 	<th>${dto.TeamName }</th>
			 	<th>vs</th>
			 	<th>${dto.TeamName }</th>
			 </tr>
		</thead>
		<tbody>
		<tr>
			<td>${dto.Top }</td>
			<td></td>
			<td>${dto.Top }</td>
		</tr>
		<tr>
			<td>${dto.jungle }</td>
			<td></td>
			<td>${dto.jungle }</td>
		</tr>
		<tr>
			<td>${dto.Mid }</td>
			<td></td>
			<td>${dto.Mid }</td>
		</tr>
		<tr>
			<td>${dto.AdCarry }</td>
			<td></td>
			<td>${dto.AdCarry }</td>
		</tr>
		<tr>
			<td>${dto.Supporter }</td>
			<td></td>
			<td>${dto.Supporter }</td>
		</tr>
		</tbody>
	</table>
</div>



</body>
</html>