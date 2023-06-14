<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>
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
    
    
    
<section>
	
	<div align="center"  margin-top: 10px;" >
	<br><br>
	
		<h2 style="font-weight: bold; font-size: 20px;">skyblue in your eyes 로그인</h2><br><br>
		
		<form action="loginForm.member" method="post">
		
		<table>
		<tr>
			<td>
			<input type="text" name="id" placeholder="아이디"></td>
		</tr>
		<tr>
			<td>
			<input type="password" name="pw" placeholder="비밀번호"></td><br><br><br>
		</tr>	
		</table>
		
	
	
		<div style="text-align: center; display: inline-block; margin-right: 30px;">
		
			<input type="submit" value="로그인" class="btn-7" ></div>
			
			<div style="display: inline-block;" >
			<input type="button" value="가입하기" class="btn-8" onclick="location.href='member_join.member' " >
			</div>			
	</section>
			
		</form><br><br>
		
		<div style="text-align: center; display: inline-block; color: #326194;" >${msg }</div> <!-- 아이디 비밀번호를 확인하세요 문구 뜸. 스타일 바꿔야함-->
		
		
	</div>
	
	
</section>

<%@ include file="../include/footer.jsp" %>