<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.sky.member.model.MemberVO"%> 
<%@ include file="../include/header.jsp" %>
    
<%-- <%
	MemberVO vo =  (String)request.getAttribute("id");
%> --%>    
<meta charset="UTF-8">
<title>skyblue in your eyes</title>

<style>

	table {
	  border-collapse: separate;
	  border-spacing: 10px; /* 간격 크기 조정 */
	}
	
	td {
	  padding: 10px; /* 간격 크기 조정 */
	}
	
	<table cellpadding="10">
 	 <!-- 테이블 콘텐츠 -->
	</table>
	
	
</style>

<div class="content">
	<div align="center">
	
		<h3>회원정보 수정</h3><br></br>
		<b>${sessionScope.member_name}님 회원 정보를 수정합니다</b><br></br>
			
		<form action="member_update.member" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" value="${vo.id }" readonly="readonly" ></td>
				</tr>			
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw" required="required" pattern="\w{6,}"></td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td><input type="text" name="name" value="${vo.name }" readonly="readonly"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" value="${vo.email }"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<input type="radio" name="gender" value="M" ${vo.gender == 'M' ? 'checked' : '' }>남자 
						<input type="radio" name="gender" value="F" ${vo.gender == 'F' ? 'checked' : '' }>여자 
					</td>
				</tr>
			</table><br><br>
							
			<input type="submit" value="정보수정" />
			<input type="button" value="회원페이지로 가기" onclick="location.href='member_mypage.member' ">			
			
		</form>
		
		
	</div>


</div>


<%@ include file="../include/footer.jsp" %>    
    
