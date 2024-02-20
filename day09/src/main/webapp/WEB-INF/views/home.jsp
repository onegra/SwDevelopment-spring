<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>day09</h1>
<hr>

<h3>JSON : JaveScipt Object Notation</h3>
<h3>자바스크립트에서 객체를 표현하는데 사용하는 문법</h3>

<fieldset>
	<legend>XML</legend>
	<pre>
		&lt;person>
			&lt;name>이지은&lt;/name>
			&lt;age>31&lt;/age>
		&lt;/person>
	</pre>
</fieldset>
<br>
<fieldset>
	<legend>JSON</legend>
	<pre>
		"person" : {
			"name" : "이지은",
			"age" : 31,
		}
	</pre>
</fieldset>
<ul>
	<li><a href="ex01">ex01 - 부산 축제 정소 서비스 연습</a></li>
	<li><a href="ex02">ex02 - 부산 축제 정보 서비스(AJAX)</a></li>
</ul>
<script>
	//변수 선언 키워드 (자료형이 아님)
	var t1 = 'A'
	let t2 = 15
	const t3 = 3.2
	
	console.log(t1)
	console.log(t2)
	console.log(t3)
	
	//var는 함수밖에서 선언해도 함수내부에서 재선언 및 재할당이 가능
	//변수 이름을 중복해서 사용하지 않는다면 이론적으로는 큰 문제가 안됨
	
	if(t2 > 10) {
		var t1 = 'apple'
	}
	console.log(t1)
	
	//let:재할당 가능
	//const:재할당 불가(상수화된 변수, 메모리 효율이 높다)
	
	console.log(typeof(t1))	// string
	console.log(typeof(t2))	// number
	console.log(typeof(t3)) // number
	console.log(typeof([])) // object (array)
	console.log(typeof({})) // object
	console.log(typeof(function(){})) //function, JS에서는 함수도 자료형이며 변수에 대입할 수 있다
	
	const t4 = {				//Map<String>, object
			"name" : "이지은",
			"age" : 31
	}
	console.log(t4)
	console.log(t4.name)
	console.log(t4.age)
	
	const t5 = {			//자바스크립트 문법에서는 간략하게 나타낼 수 도 있다
			name : '홍진호',	//단, JSON 문법으로 나타내기 위해서는 key를 "로 묶어야 한다
			age : 41,
			show: function() { console.log(this.name + '님은' + this.age + '살입니다')}
	}
	console.log(t5)
	console.log(t5.name)
	console.log(t5.age)
	t5.show()
	
	//자바스크립트의 객체를 JSON문법의 문자열로 변환하는 함수 및 되돌리는 함수가 내장되어 있다
	const t6 = JSON.stringify(t4) //객체를 JSON문자열로 변환하는 함수
	const t7 = JSON.parse(t6)	//json문자열을 객체로 변환하는 함수
	
	console.log(t6, typeof(t6))
	console.log(t7, typeof(t7))
</script>
</body>
</html>