<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>
    
    
<div class="content">
	
	<div align="center">
	<br><br>
	
		<h3>skyblue in your eyes 로그인</h3><br><br>
		
		<form action="loginForm.member" method="post">
			<input type="text" name="id" placeholder="아이디"><br>
			<input type="password" name="pw" placeholder="비밀번호"><br><br><br>
			
			<input type="submit" value="로그인">
			<input type="button" value="가입하기" onclick="location.href='member_join.member' " >			
			
		</form><br><br>
		
		<div>${msg }</div> <!-- 아이디 비밀번호를 확인하세요 문구 뜸. 스타일 바꿔야함-->
		
		
	</div>
	
	
</div>

<%@ include file="../include/footer.jsp" %>