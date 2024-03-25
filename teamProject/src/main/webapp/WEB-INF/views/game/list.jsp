<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<style>
    .month_ul {  
      width: auto;
      flex-wrap: wrap;
      justify-content: space-between;
      padding: 0 50px;
    }
    .month_li {
      
        display: inline-block;
        background-color: #151618;
        font-size: 18px;
        padding: 1px 128px;
        text-align: center;
    }
   .month_li > .month_a {
      font-weight: 570;
      color: white;
      margin: 10px;
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
        /* margin-left: 300px; */
		justify-content: center;
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
   .sub_score {
   	  display: flex;
   	  align-items: center;
   }
 </style>


<div class="main" style="background-color: white;">
    	
        <ul class="month_ul" >
        	<li class="month_li"><a class="month_a" href="${cpath }/game/list/2024-01">1월</a></li>
        	<li class="month_li"><a class="month_a" href="${cpath }/game/list/2024-02">2월</a></li>
        	<li class="month_li"><a class="month_a" href="${cpath }/game/list/2024-03">3월</a></li>
        	<li class="month_li"><a class="month_a" href="${cpath }/game/list/2024-04">4월</a></li>
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
                                  <div class="sub_score">
                                    <span>${dto.redTeam }</span>   
                                      <img src="${dto.redTeamImg }"
                                         width="24px"
                                         height="24px">
                                </div>
                                <div class="sub_score flex">
                                    <span>${dto.redScore }</span>
                                	<span style="text-align: center;"> : </span>
                                    <span>${dto.blueScore }</span>
                               	</div>
                                <div class="sub_score">
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