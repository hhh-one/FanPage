<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.sky.member.model.MemberVO"%> 
<%@ include file="../include/header.jsp" %>
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

<style>
.btn-7 frame {
  width: 90%;
  margin: 40px auto;
  text-align: center;
}
.btn-7 button {
  margin: 20px;
  outline: none;
}
.btn-7 {
  width: 100px;
  height: 40px;
  padding: 10px 25px;
  border: 2px solid #000;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
}
.btn-7 {
  background: #000;
  color: #fff;
  line-height: 42px;
  padding: 0;
  border: none;
  z-index: 1;
   -webkit-transition: all 0.3s linear;
  transition: all 0.3s linear;
}
.btn-7:hover {
  background: transparent;
  color: #000;
}
.btn-7:before,
.btn-7:after {
  position: absolute;
  content: "";
  left: 0;
  width: 100%;
  height: 50%;
  right: 0;
  z-index: -1;
  background: #000;
  transition: all 0.3s ease;
}
.btn-7:before {
  top: 0;
}
.btn-7:after {
  bottom: 0;
}
.btn-7:hover:before,
.btn-7:hover:after {
  height: 0;
  background-color: #000;
}

/* btn-8  */

.btn-8 frame {
  width: 90%;
  margin: 40px auto;
  text-align: center;
}
.btn-8 button {
  margin: 20px;
  outline: none;
}
.btn-8 {
  width: 150px;
  height: 40px;
  padding: 10px 25px;
  border: 2px solid #000;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
}
.btn-8 {
  background: #A4A4A4;
  color: #fff;
  line-height: 42px;
  padding: 0;
  border: none;
  z-index: 1;
   -webkit-transition: all 0.3s linear;
  transition: all 0.3s linear;
}
.btn-8:hover {
  background: transparent;
  color: #000;
}
.btn-8:before,
.btn-8:after {
  position: absolute;
  content: "";
  left: 0;
  width: 100%;
  height: 50%;
  right: 0;
  z-index: -1;
  background: #000;
  transition: all 0.3s ease;
}
.btn-8:before {
  top: 0;
}
.btn-8:after {
  bottom: 0;
}
.btn-8:hover:before,
.btn-8:hover:after {
  height: 0;
  background-color: #000;
}


</style>



<script>

 	 //id 중복체크
	 function idcheck() { 
	   window.open('idCheck.jsp', 'IDCheck', 'width=450,height=350');
	 }    	 
	
	function namecheck() { 
	    window.open('nameCheck.jsp', 'IDCheck', 'width=450,height=350');
	} 
	
</script>
<section>
	<div align="center">
	
		<h3 style="font-weight: bold; font-size: 20px;">회원정보 수정</h3><br></br>
		<b>${sessionScope.member_name}님 회원 정보</b><br></br>
			
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
	<section style="text-align: center; margin-top: 10px;">
	
		<div style="display: inline-block; margin-right: 30px;">						
			<input type="submit" value="정보수정" class="btn-7" /></div>
			
		<div style="display: inline-block;" >	
			<input type="button" value="회원페이지로 가기" class="btn-8" onclick="location.href='member_mypage.member' ">			
		</div><br><br>	
		</form>
		
		
	</div>


</section>


<%@ include file="../include/footer.jsp" %>    
    
