<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<style>
   p{
   text-align: center;
   }
   .main {
   background-color: #141517;}
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
   .choice {
   		border: 1px solid white;
   		height: 800px;
   		margin: 100px;
   } 
	.red_choice {
		float: left;
	}
	.blue_choice {
		float: right;
	}
	.red_choice, .blue_choice {
		border: 1px solid white;
		height: 700px;
		padding: 20px;
		width: 43%;
		margin: 20px 20px;
    	justify-content: center;
    	flex-direction: column;
	}
	.teamname {
		line-height: 200%;
		font-size: 50px;
		border: 1px solid white;
		text-align: center;
		height: 100px;
		align-items: center;
		padding: 10px;
	}
	.team {
		border: 1px solid white;
    	flex-direction: row;
    	justify-content: space-between; 
	}
	.count {
   		border: 1px solid white;
   		height: 60px;
   		display: flex;
    	justify-content: space-between;
    	margin: 20px;
    	padding: 10px;
    	
   	}
	.player {
		width: 150px;
		height: 90%;
		text-align: center;
		border: 1px solid white;
		line-height: 300%;
    	
	}
	
   	.votes {
   		width: 200px;
		line-height: 500%;
    	
		}
   	.percent {
   		font-size: 25px;
   		text-align: center;
   		line-height: 300%;
   		width: 60px;		
    	
   	}
   	
   	
</style>


<div class="main">
   
   <div class="title">
      <p class="lol">2024 LoL 챔피언스 코리아 스프링</p>
      <span class="mvp">MVP</span>
      <p style="color: #858894;" >팬들이 직접 선정한 매치 MVP 입니다.</p>
   </div>
   <div class="sub_title" style="padding: 20px; text-align: right">
      <span class="title">${dto.title }</span>
       <span class="day"><fmt:formatDate value="${dto.gameDate }" pattern="YYYY-MM-dd"/></span>
       <span class="time">${dto.gameTime }</span>
   </div>

   <div class="" style="text-align: center; font-size: 30px; margin: 30px;" >
      <span class="hidden">
      <c:if test="${dto.result == 1 }">이미 종료된 투표입니다</c:if>
      </span> 
   </div>
   <div class="choice">
   		<div class="red_choice flex">
   			<div class="teamname">${dto.redTeam }</div>
   				<div class="team">
   					<div class="count">
   						<div class="player">${dto.redTop }</div>
   						<div class="votes">${dto.redTopCount }표</div>
   						<div class="percent">${dto.redTopPercent }%</div>
   					</div>
   					<div class="count">
   						<div class="player">${dto.redJungle }</div>
   						<div class="votes">${dto.redJungleCount }표</div>
   						<div class="percent">${dto.redJunglePercent }%</div>
   					</div>
   					<div class="count">
   						<div class="player">${dto.redMid }</div>
   						<div class="votes">${dto.redMidCount }표</div>
   						<div class="percent">${dto.redMidPercent }%</div>
   					</div>
   					<div class="count">
   						<div class="player">${dto.redAdCarry }</div>
   						<div class="votes">${dto.redAdCarryCount }표</div>
   						<div class="percent">${dto.redAdCarryPercent }%</div>
   					</div>
   					<div class="count">
   						<div class="player">${dto.redSupporter }</div>
   						<div class="votes">${dto.redSupporterCount }표</div>
   						<div class="percent">${dto.redSupporterPercent }%</div>
   					</div>
   				</div>
   			</div>
   		<div class="blue_choice flex">
   			<div class="teamname">${dto.blueTeam }</div>
   				<div class="team">
   					<div class="count">
   						<div class="player">${dto.blueTop }</div>
   						<div class="votes">${dto.blueTopCount }표</div>
   						<div class="percent">${dto.blueTopPercent }%</div>
   					</div>
   					<div class="count">
   						<div class="player">${dto.blueJungle }</div>
   						<div class="votes">${dto.blueJungleCount }표</div>
   						<div class="percent">${dto.blueJunglePercent }%</div>
   					</div>
   					<div class="count">
   						<div class="player">${dto.blueMid }</div>
   						<div class="votes">${dto.blueMidCount }표</div>
   						<div class="percent">${dto.blueMidPercent }%</div>
   					</div>
   					<div class="count">
   						<div class="player">${dto.blueAdCarry }</div>
   						<div class="votes">${dto.blueAdCarryCount }표</div>
   						<div class="percent">${dto.blueAdCarryPercent }%</div>
   					</div>
   					<div class="count">
   						<div class="player">${dto.blueSupporter }</div>
   						<div class="votes">${dto.blueSupporterCount }표</div>
   						<div class="percent">${dto.blueSupporterPercent }%</div>
   					</div>
   				</div>
   		</div>
   		
   </div>
 
</div>

<!-- 득표 수를 실시간으로 출력하기 위한 스크립트 -->
<script>
   if(document.querySelector('.hidden').innerText == '이미 종료된 투표입니다') {
      document.querySelectorAll('.count').forEach(c => {
            c.style.backgroundColor = '#525252';});
   }
    const cells = document.querySelectorAll('div .player');

    cells.forEach(cell => {
        cell.addEventListener('click', async function() {
           if(document.querySelector('.hidden').innerText == '이미 종료된 투표입니다') {
              
              return
           }
              
            cells.forEach(c => c.classList.remove('selected'));
            this.classList.add('selected');

            const selectedInfo = this.innerText
            const selectedUserid = 'admin'
            const selectedGameIdx = '${dto.idx}'
            //console.log(selectedUserid)
            //console.log(selectedGameIdx)
            //console.log('Selected:', selectedInfo);

            
            const url = '${cpath}/Ajax/MVP'
            const ob = {
                  playerName : selectedInfo,
                  userId : selectedUserid,
                  gameIdx   : selectedGameIdx
            }
            const opt = {
                  method : 'POST',
                  body: JSON.stringify(ob),
                  headers: {'Content-Type' : 'application/json; charset=utf-8'}
            }
            const result = await fetch(url,opt).then(resp => resp.text())         
            if(result == 1) {
               location.reload()
            }
        });
    });
    
    
</script>

<!-- <script> -->
//   // 실제 시간 가져오기
//   setInterval(TimeHandler,100)
//   async function TimeHandler() {
//      const url = '${cpath}/Ajax/MVPTime'
//           const ob = {
//                 todayDate : new Date(),
//               gameDate : '${dto.gameDate }'
//           }
//           const opt = {
//                 method : 'POST',
//                 body: JSON.stringify(ob),
//                 headers: {'Content-Type' : 'application/json; charset=utf-8'}
//           }
//           const result = await fetch(url,opt).then(resp => resp.text())
//             if(result == 1) {
//              document.querySelector('.hidden').innerText = '이미 종료된 투표입니다'; 
//              }
//             };
<!-- </script> -->

<style>
    .selected {   
        background-color: #5e7fea;
    }
</style>

</body>
</html>