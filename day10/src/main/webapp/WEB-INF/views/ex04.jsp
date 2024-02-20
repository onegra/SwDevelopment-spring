<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
	border: 2px solid black;
	border-collapse: collapse;
	}
	td {
	padding: 5px 10px;
	border: 1px solid grey;
	}
</style>
</head>
<body>
<h1>회원 목록</h1>
<div id="root"></div>
<script>
	function loadHandler() {
		const root = document.getElementById('root')
		const url = '${cpath}/ex04Ajax'
		
		fetch(url)
			.then(resp => resp.json())
			.then(json => {
				console.log(json)
				const arr = json
				const tr1 = document.createElement('tr')
				const tr2 = document.createElement('tr')
				const tr3 = document.createElement('tr')
				const tr4 = document.createElement('tr')
				const tr5 = document.createElement('tr')
				
				for (let i in arr) {
					const td1 = document.createElement('td')
					td1.innerText = arr[i].id
					tr1.appendChild(td1)
					
					const td2 = document.createElement('td')
					td2.innerText = arr[i].userid
					tr2.appendChild(td2)
					
					const td3 = document.createElement('td')
					td3.innerText = arr[i].username
					tr3.appendChild(td3)
					
					const td4 = document.createElement('td')
					td4.innerText = arr[i].email
					tr4.appendChild(td4)
					
					const td5 = document.createElement('td')
					td5.innerText = arr[i].gender
					tr5.appendChild(td5)
				}
				const table = document.createElement('table')
				table.appendChild(tr1)
				table.appendChild(tr2)
				table.appendChild(tr3)
				table.appendChild(tr4)
				table.appendChild(tr5)
				
				const root = document.getElementById('root')
				root.appendChild(table)
			})
	}
	// DOM : Document Object Model, 문서의 내용을 하나하나 객체화하여, 객체의 모델관계로 해석하는 구조
	// HTML문서 내부의 태그를 '객체'로 취급하여, 여러 객체가 'Tree' 구조로 나열되어 있는 관계로 해석한다
	// 문서를 구성하는 각 요소 (element) 혹은 객체 (object) 를 DOM이라고 부르기도 한다
	document.addEventListener('DOMContentLoaded', loadHandler)
</script>
</body>
</html>