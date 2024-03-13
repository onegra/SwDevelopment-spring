<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<style>
    .calender {
        height: 100px;
        text-align: center;
        border: 1px solid #EDEDEd;
        background-color: white;
    }
    .calender > .yyyy {
        font-size: 30px;
        font-weight: 900;
        margin-top: 20px;
        color: #000;
    }
    .item {
    	border: 1px solid grey;
    	color: #000;
    }
    .date {
   		font-weight: 900;
    	background-color: #fafbfe;
    	padding: 13px 15px;
    	font-size: 18px;
    	border-bottom: 1px solid #EDEDEd;
    }
    .list {
        text-align: center;
    }
    .day {
        flex: 1;
        margin: auto;
        padding: 15px;
    }
    .score {
        flex: 3;
        margin-left: 300px;

    }
    .time {
        font-weight: 900;
    }
    .title {
        color:#777;
    }
    .result {
        width: 37px;
        padding: 3px 0;
        margin: 10px;
        border-radius: 3px;
        color: #a0a5b6;
        background-color: #f5f6f9;
    }
    .btns {
        flex: 1;
        text-align: right;
        margin: auto;
        padding: 10px;
    }
 </style>

<div class="main">
        <div>
            <div class="calender">
                <div class="yyyy">
                    <button> < </button>
                    2024  <button>></button>
                </div>
            </div>
			
        </div>
        <div class="box item">
        <c:forEach var="dto" items="${list }">
        
           <div class="date"><a>${dto.gameTime }</a></div>
           <ul class="box list">
              <li class="game1 flex">
                 <div class="day">
                    <span class="time">21:00</span>
                    <span class="result">${dto.status }</span>
                 </div>
                 <div class="score flex">
                    <div class="score1">
                       <span>${dto.redTeam }</span>	
                       <img src="https://nng-phinf.pstatic.net/MjAyNDAxMDlfMjMy/MDAxNzA0Nzc3NjI1MTQ2.eGW1SDrSWl18jzPXlcvANpcCWKpYsf6IjimjGSDjoMQg.hlnvjyQsj9nIiMZeA4OhBE55kkwj5teP9EQv1jiyrdwg.PNG/nISCkMhXrbDUSwvvNBHU.png?type=f120_120"
                          width="32px"
                          height="32px">
                       <span>${dto.redScore }</span>
                    </div>
                    <p>:</p>
                    <div class="score1">
                       <span>${dto.blueScore }</span>
                       <img src="https://nng-phinf.pstatic.net/MjAyNDAxMDlfMjMy/MDAxNzA0Nzc3NjI1MTQ2.eGW1SDrSWl18jzPXlcvANpcCWKpYsf6IjimjGSDjoMQg.hlnvjyQsj9nIiMZeA4OhBE55kkwj5teP9EQv1jiyrdwg.PNG/nISCkMhXrbDUSwvvNBHU.png?type=f120_120"
                          width="32px"
                          height="32px">
                       <span>${dto.blueTeam }</span>
                    </div>
                 </div>
                    
                 <div class="btns">
                    <div class="btn">
                    	<!-- /game/video/${dto.idx}로 변환 -->
                    	<a href="${cpath }/game/video/">
                    	 <button>다시보기</button>
                    	</a>
                    </div>
                 </div>
              </li>
           </ul>
        
        </c:forEach>
        </div>
     </div>




</body>
</html>