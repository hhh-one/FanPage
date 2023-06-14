<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<section  style="text-align: center; margin-top: 20px;">
	<div style="display: inline-block;" align="center">
	
		<h3 style="font-weight: bold; font-size: 20px;">회원정보 페이지</h3><br><br>
		
		${sessionScope.member_id }
		(${sessionScope.member_name }) 님의 mypage
		
		<br></br><br></br>
		
		<table border="1">
			<tr>
				<td><input type="button" name="회원수정" value="회원수정" class="btn-8" onclick="member_modify.member" ></td>
				</td>				
			</tr>	
			<tr>
				<td><input type="button" name="로그아웃" value="로그아웃" class="btn-8" onclick="member_logout.member" ></td>
				</td>				
			</tr>	
			<tr>
				<td><input type="button" name="회원탈퇴" value="회원탈퇴" class="btn-8" onclick="member_delete.member" ></td>
				</td>				
			</tr>
	</div>
</table>
</section>

<%@ include file="../include/footer.jsp" %>  