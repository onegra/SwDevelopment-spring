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
    	border-top: 1px solid #ededed;
    	border-bottom: 1px solid #EDEDEd;
    }
   
    .game1 {
    	border-bottom: #ededed;
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
<!-- 		<div class="calender"> -->
<!--         	<div class="monthList"> -->
<!--             	<button> < </button> -->
<%--                     	<fmt:formatDate value="${dto.gameDate }" pattern="MM"/>월 --%>
<!--                 <button>></button> -->
<!--             </div> -->
<!--         </div> -->
    </div>
        <ul style="background-color: white">
        	<li><a href="${cpath }/game/list/2024-01">1월</a></li>
        	<li><a href="${cpath }/game/list/2024-02">2월</a></li>
        	<li><a href="${cpath }/game/list/2024-03">3월</a></li>
        	<li><a href="${cpath }/game/list/2024-04">4월</a></li>
        </ul>
    <div class="item">
   	    <c:forEach var="date" items="${datelist }">
        	<div class="box">
        		<p class="date">${date }</p>
        		<c:forEach var="dto" items="${list }">
        			<c:if test="${date == dto.gameDate }">
        				<ul class="box list">
              				<li class="game1 flex">
                 				<div class="day">
                    				<span class="time">${dto.gameTime }</span>
                    				<span class="result">${dto.status == 0 ? "종료" : dto.status == 1 ? "경기중" : "예정"}</span>
                    				<span class="title">${dto.title }</span>
                 				</div>
            			   		<div class="score flex">
                   					<div class="score1">
                     					<span>${dto.redTeam }</span>	
                       					<img src="${dto.redTeamImg }"
                          					width="24px"
                          					height="24px">
                       					<span>${dto.redScore }</span>
                    				</div>
                    				<p style="text-align: center;"> : </p>
                    				<div class="score1">
                       					<span>${dto.blueScore }</span>
                       					<img src="${dto.blueTeamImg }"
                          					width="24px"
                          					height="24px">
                       					<span>${dto.blueTeam }</span>
                    				</div>
                 				</div>
                 				<div class="btns">
                    				<div class="btn">
                            			<c:choose>
                                			<c:when test="${dto.status == 0}">
                                   				<a href="${cpath}/game/video/">
                                       			<button>다시보기</button>
                                   				</a>
                                   				<a href="${cpath}/game/MVP/${dto.idx }">
                                   				<button>MVP투표</button>	
                                   				</a>  
                                			</c:when>
                                			<c:when test="${dto.status == 1}">
                              	 				<a href="${cpath}/game/watch/">
                                       			<button>중계보기</button>
                                   				</a>
                                			</c:when>
                                			<c:otherwise>
                                   				<a href="${cpath}/game/predict/">
                                       			<button>예측하기</button>
                                   				</a>
                                			</c:otherwise>
                            			</c:choose>
                        			</div>
                 				</div>
              				</li>
 					    </ul>
        			</c:if>
        		</c:forEach>
        	</div>
        </c:forEach>
    </div>
</div>	

</body>
</html>