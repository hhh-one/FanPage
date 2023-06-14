<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서강준(SEO KANG JUN) 팬페이지</title>
	<!-- CSS 적용 -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/main.css">
</head>
<body>
	<header>
        <div class="title">SKYBLUE IN YOUR EYES</div>
        <div class="title-info">서강준(SEO KANG JUN) 팬페이지</div>
    </header>
    <!-- end header -->
    <div class="container">
        <div class="nav">
            <div class="actor-info">
                <div class="profile-img">
                    <img src="<%= request.getContextPath() %>/images/skj_img.png" alt="official_img">
                </div>
                <div class="profile-info">
                    <div class="title">서강준(SEO KANG JUN) 팬페이지</div>
                    <!-- 오디오 관련 내용 -->
                    <div class = "audio-container">
                    	<ul>
                        	<li>🎵 You are my love
                        		<audio class="audio-player" autoplay controls>
                         			<source src="../audio/You%20Are%20My%20Love.mp3" type="audio/mp3">
                         		</audio>
                       	 </li>
                    	</ul>
                    </div>
                </div>
            </div>
            <div class="cafe-menu">
                <ul class="depth1">
                    <li>
                    	<div class="menu-head"><button>JOIN</button></div>
                    	<div class="menu-items"><a href="">LOGIN</a></div>
                    </li>
                    <li>
                    	<div class="menu-items"><a href="<%= request.getContextPath() %>/board/board_list.board">BOARD</a></div>
                		<div class="menu-items"><a href="">TALKTALK</a></div>
                    </li>
                    <li>
                        <div class="menu-head">OFFICIAL SEO KANG JUN</div>
                        <ul>
                            <li><a href="https://www.instagram.com/seokj1012/" target="_blank">서강준 INSTAGRAM</a></li>
                            <li><a href="https://www.tiktok.com/@seokangjun_official/" target="_blank">서강준 TIKTOK</a></li>
                        </ul>
                    </li>
                    <li>
                        <div class="menu-head">소속사 [맨오브크리에이션]</div>
                        <ul>
                            <li><a href="https://www.instagram.com/manofcreation_official/">소속사 INSTAGRAM</a></li>
                            <li><a href="https://twitter.com/manofcreation0">소속사 TWITTER</a></li>
                            <li><a href="https://post.naver.com/my.nhn?memberNo=49912974">소속사 네이버 포스트</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
       </div>