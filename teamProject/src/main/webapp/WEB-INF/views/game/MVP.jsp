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
		 <span class="day"><fmt:formatDate value="${dto.gameTime }" pattern="YYYY-MM-dd HH:mm"/></span>
	</div>
	<table class="teamlist">
		<thead>
			 <tr>
			 	<th>${dto.redTeam }</th>
			 	<th>vs</th>
			 	<th>${dto.blueTeam }</th>
			 </tr>
		</thead>
		<tbody>
		<tr>
			<td>${dto.redTop }</td>
			<td></td>
			<td>${dto.blueTop }</td>
		</tr>
		<tr>
			<td>${dto.redJungle }</td>
			<td></td>
			<td>${dto.blueJungle }</td>
		</tr>
		<tr>
			<td>${dto.redMid }</td>
			<td></td>
			<td>${dto.blueMid }</td>
		</tr>
		<tr>
			<td>${dto.redAdCarry }</td>
			<td></td>
			<td>${dto.blueAdCarry }</td>
		</tr>
		<tr>
			<td>${dto.redSupporter }</td>
			<td></td>
			<td>${dto.blueSupporter }</td>
		</tr>
		</tbody>
	</table>
</div>



</body>
</html>