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
	.hidden {
		display: none;
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
		<span class="title">${dto.title }</span>
		 <span class="day"><fmt:formatDate value="${dto.gameDate }" pattern="YYYY-MM-dd"/></span>
		 <span class="time">${dto.gameTime }</span>
		 <span class="hidden">이미 종료된 투표입니다</span>
	</div>
	<table class="teamlist">
		<thead>
			 <tr>
			 	<th>${dto.redTeam }</th>
			 	<th colspan="4">vs</th>
			 	<th>${dto.blueTeam }</th>
			 </tr>
		</thead>
		<tbody>
		<tr>
			<td class="count">${dto.redTop }</td>
			<td><span>${dto.redTopCount }</span></td>
			<td><span>${dto.redTopPercent }%</span></td>
			<td><span>${dto.blueTopPercent }%</span></td>
			<td><span>${dto.blueTopCount }</span></td>
			<td class="count">${dto.blueTop }</td>
		</tr>
		<tr>
			<td class="count">${dto.redJungle }</td>
			<td><span>${dto.redJungleCount }</span></td>
			<td><span>${dto.redJunglePercent }%</span></td>
			<td><span>${dto.blueJunglePercent }%</span></td>
			<td><span>${dto.blueJungleCount }</span></td>
			<td class="count">${dto.blueJungle }</td>
		</tr>
		<tr>
			<td class="count">${dto.redMid }</td>
			<td><span>${dto.redMidCount }</span></td>
			<td><span>${dto.redMidPercent }%</span></td>
			<td><span>${dto.blueMidPercent }%</span></td>
			<td><span>${dto.blueMidCount }</span></td>
			<td class="count">${dto.blueMid }</td>
		</tr>
		<tr>
			<td class="count">${dto.redAdCarry }</td>
			<td><span>${dto.redAdCarryCount }</span></td>
			<td><span>${dto.redAdCarryPercent }%</span></td>
			<td><span>${dto.blueAdCarryPercent }%</span></td>
			<td><span>${dto.blueAdCarryCount }</span></td>
			<td class="count">${dto.blueAdCarry }</td>
		</tr>
		<tr>
			<td class="count">${dto.redSupporter }</td>
			<td><span>${dto.redSupporterCount }</span></td>
			<td><span>${dto.redSupporterPercent }%</span></td>
			<td><span>${dto.blueSupporterPercent }%</span></td>
			<td><span>${dto.blueSupporterCount }</span></td>
			<td class="count">${dto.blueSupporter }</td>
		</tr>
		</tbody>
	</table>
</div>

<!-- 득표 수를 실시간으로 출력하기 위한 스크립트 -->
<script>
    const cells = document.querySelectorAll('tbody .count');

    cells.forEach(cell => {
        cell.addEventListener('click', async function() {
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
            		gameIdx	: selectedGameIdx
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
<script>
  // 실제 시간 가져오기
  setInterval(TimeHandler,5000)
  async function TimeHandler() {
	  const url = '${cpath}/Ajax/MVPTime'
          const ob = {
          		todayDate : new Date(),
	  			gameDate : '${dto.gameDate }'
          }
          const opt = {
          		method : 'POST',
          		body: JSON.stringify(ob),
          		headers: {'Content-Type' : 'application/json; charset=utf-8'}
          }
          const result = await fetch(url,opt).then(resp => resp.text())
            if(result == 1) {
	 			document.querySelector('.hidden').style.display = 'inline'; 
	 			cells.forEach(cell => {
	 		        cell.removeEventListener('click');
	 		      });
	 		    }
	 		  };
</script>
<style>
    .selected {
        background-color: #5e7fea;
    }
</style>

</body>
</html>