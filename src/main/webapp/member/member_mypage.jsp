<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
    
<meta charset="UTF-8">
<title>skyblue in your eyes</title>
   
    
<section>
	<div align="center">
	
		<h3>회원정보 페이지</h3><br><br>
		
		${sessionScope.member_id }
		(${sessionScope.member_name }) 님의 mypage
		
		<br></br><br></br>
		<a href="member_modify.member">회원수정</a><br></br><br></br>
		
		<a href="member_logout.member">로그아웃</a><br></br><br></br>		
				
		<a href="member_delete.member">회원탈퇴</a><br></br><br></br>
		
	</div>

</section>

<%@ include file="../include/footer.jsp" %>  