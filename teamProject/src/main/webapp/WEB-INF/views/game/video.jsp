<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<style>
    .title_reply {
        background-color: #141517;
        margin: 0;
        padding: 20px; 
        height: 30px; 
        font-size: 20px; 
        font-weight: 700; 
    }
    .left {
        width: 70%;
        float: left;
    }
    .search {
        margin: 10px;
        border-right: 00px;
        background-color: #fff;
        border-bottom: 1px solid #ededed;
    }
    .video {
        border: 1px solid blue;
        background-color: #fff;
        height: 900;
    }
    .video_left {
        flex: 1;
    }
    .video_right {
        flex: 1;
    }
    .video_center {
        flex: 1;
    }
    .right {
       margin: 10px;
        width: 28%;
        height: 1000px;
        float: right;
        border: 1px solid #ededed;
        background-color: white;
        border-radius: 6px;
    }
    .title_most {
        padding: 10px; 
        font-size: 18px; 
        color: black; 
        font-weight: 400;
        height: 50px;
        display: block;

    }
    .video_main {
        border: 1px solid black;
        width: 300px;
        height: 200px;
        margin: 60px auto;
    }
    .video_text {
        padding: 5px;
        border: 1px solid black;
    }
    .video_mini {
        width: 90%;
        border: 1px solid blueviolet;
        height: px;
    }
    .video_sub {
        width: 45%;
        height: 80px;
        flex: 1;
        border: 1px solid black;
        margin: 5px auto;
        padding: 5px;
    }
    .video_sub_title {
        width: 45%;
        height: 80px;
        flex: 1;
        border: 1px solid black;
        margin: 5px 32px;
        padding: 5px ;
    }

 </style>


<div class="main">
        <div>   
           <div class="title_reply">다시보기</div>
            <div class="left" >
                
                <div class="search">
                    <span><input type="search" name="searchKeyword" placeholder="검색어를 입력하세요"></span>
                    <span><input type="submit" value="검색"></span>
                </div>
                
                <div class="video flex">
                    <div class="video_left">
                        <div class="video_main">
                            <ul class="video_list">
                                
                            </ul>
                           <!--영상 db필요 영상을 볼수 있게하는 사이트 주소로 이동  -->
                            <a href="${cpath }/game/video/"><img src="https://image.zdnet.co.kr/2024/01/12/6674691196e1288f4a478ad5b37bc44a.png" width="100%" height="100%"></a>
                            <div class="video_text">
                                <span><a href="#" style="color: black;">KT-KDF 2세트(예시)</a></span>
                                <div>
                                    <span><a href="#" style="color: black;">조회수(예시)</a></span>
                                </div>
                                
                            </div>
                        </div>
                       

                        <div class="video_main">
                            video
                        </div>
                    </div>
                    <div class="video_center">
                        <div class="video_main">
                            video
                        </div>
                        <div class="video_main">
                            video
                        </div>
                    </div>
                    <div class="video_right">
                        <div class="video_main">
                            video
                        </div>
                        <div class="video_main">
                            video   
                        </div>
                    </div>
                </div>
            </div>
            <div class="right">
               
                <div class="title_most">
                    많이 본 영상
                </div>
                <ul class="video_mini flex">
                    <div class="video_sub">
                    video
                    </div>
                    <div class="video_sub_title">title</div>  
                </ul>
                   
                
            </div>
        </div>
        
     </div>	




</body>
</html>