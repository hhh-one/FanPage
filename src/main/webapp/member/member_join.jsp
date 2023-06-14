<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>
<%
String header = request.getHeader("content-type");
%>
<head>
<meta charset="UTF-8">
<title>skyblue in your eyes</title>
</head>
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


p {
  font-family: 'Lato', sans-serif;
  font-weight: 300;
  text-align: center;
  font-size: 18px;
  color: #676767;
}
.frame {
  width: 90%;
  margin: 40px auto;
  text-align: center;
}
.btn-5 button {
  margin: 20px;
  outline: none;
}
.custom-btn {
  width: 130px;
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
.btn-5 {
  background: #000;
  color: #fff;
  line-height: 42px;
  padding: 0;
  border: none;
}
.btn-5:hover {
  background: transparent;
  color: #000;
   box-shadow:
   -7px -7px 20px 0px #fff9,
   -4px -4px 5px 0px #fff9,
   7px 7px 20px 0px #0002,
   4px 4px 5px 0px #0001;
}
.btn-5:before,
.btn-5:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #000;
  transition:400ms ease all;
}
.btn-5:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
.btn-5:hover:before,
.btn-5:hover:after{
  width:100%;
  transition:800ms ease all;
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


<section style="text-align: center; margin-top: 10px;" >

	<div style="display: inline-block;" align="center">
	
		<br>
		<h2 style="font-weight: bold; font-size: 20px;">skyblue in your eyes  회원 가입</h2><br><br><br>
		
		<span size="1" style="color: gray; ">* 은 필수 입력 사항 입니다.</span><br><br>
	
		<form action="joinForm.member" method="post" name="memberInfo" "> 	<!-- onsubmit="return checkValue()  -->

			<table border="1">

				<!-- 필수입력사항 -->	
				<tr>
					<td>* 아이디</td> <!-- 아이디 중복확인 넣어야함 -->
					<td><input type="text" name="id" required="required" pattern="\w{5,}" maxlength="20" placeholder="영문 5글자 이상 "></td>
					<td><input type="button" name="id중복확인" value="중복확인" onclick="idcheck();" style="background-color: #dcdcdc; border-color: white; color: #323232; width: 70px; height: 28px;" ></td>
									
					<!-- id 중복 체크 여부 -->
					<td><input type="hidden" name="idDuplication" value="idCheck"></td> <!--  value가 idUncheck 이면 중복체크를 하지 않은 것 -->
				</tr><br>			
				<tr>
					<td>* 비밀번호</td>
					<td><input type="password" name="pw" required="required" pattern="\w{6,}" placeholder="영문 6자리 이상"></td>
				</tr>
				<tr>	
					<td>* 비밀번호 확인 </td>					
					<td><input type="password" name="repw" required="required" placeholder="비밀번호를 재입력하세요"></td>
				</tr>			
				<tr>
					<td>* 닉네임</td> 
					<td><input type="text" name="name" required="required" ></td>
					<td><input type="button" name="name중복확인" value="중복확인" onclick="namecheck()" style="background-color: #dcdcdc; border-color: white; color: #323232; width: 70px; height: 28px;" ></td>
					<!-- 닉네임 중복 체크 여부 -->
					<td><input type="hidden" name="nameDuplication" value="nameCheck"></td> 
				</tr>
			
				<tr>
					<td>* 성별</td>
					<td>
						<input type="radio" name="gender" value="M">남자 
						<input type="radio" name="gender" value="F" checked="checked">여자 
					</td>
				</tr>	
				
				
				<!-- 선택입력사항 -->	
					
				<tr>
					<td> 이메일</td>
					<td><input type="email" name="email" placeholder="skyblue_eyes@gmail.com" ></td>
					<!-- <td><input type="button" value="Email 중복확인" onclick="emailCheck()"></td> -->
				</tr>
			
			</table>
							
			<div style="color: skyblue;">${msg }</div><br><br>		
			
			<section style="text-align: center; margin-top: 10px;">
			<div style="display: inline-block; margin-right: 10px;">
			
			<input type="submit" value="가입하기" class="btn-5" >
					<!-- style="background-color: #AFDDFA; color: white; border-color: white; width: 70px; height: 30px;" -->
			</div>
			
			<div style="display: inline-block;">
			<input type="reset" value="입력초기화" style="background-color: #dcdcdc; border-color: white; color: #646464; width: 90px; height: 30px;" >
			</div><br><br>
			<a href="../main.jsp" style="font-size: 13px;">메인 페이지로 돌아가기</a> 
			
			</section>
			
			
		</form>
		
	</div>
	
</section>

<script>
	function inputIdChk() {
		
		var joinForm = document.joinForm;
		var dbCheckId = document.joinForm.dbCheckId;
		
	}
</script>


<%@ include file="../include/footer.jsp" %>
