<%@page import="com.sky.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>skyblue in your eyes</title>
</head>
<style>

/* btn -3 */

.btn-13:p {
  font-family: 'Lato', sans-serif;
  font-weight: 300;
  text-align: center;
  font-size: 18px;
  color: #676767;
}
.btn-13:frame {
  width: 90%;
  margin: 40px auto;
  text-align: center;
}
.btn-13:button {
  margin: 30px;
  outline: none;
}
.btn-13 {
  width: 120px;
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


.btn-13 {
   background: #000;
  color: #fff;
  z-index: 1;
}
.btn-13:after {
  position: absolute;
  content: "";
  width: 100%;
  height: 0;
  bottom: 0;
  left: 0;
  z-index: -1;
   background: #e0e5ec;
  transition: all 0.3s ease;
}
.btn-13:hover {
  color: #000;
}
.btn-13:hover:after {
  top: 0;
  height: 100%;
}
.btn-13:active {
  top: 2px;
}



/* btn - */





</style>

<body>

	<div style="text-align: center">
	<br><br>
	<h3 style="font-size:20px" > 아이디 중복 확인 결과 </h3><br>
	
<%
	//사용가능한 아이디일 경우, 아이디 입력 폼에 넣기
	    String id=request.getParameter("id");
	    MemberDAO dao = MemberDAO.getInstance();    
	    int cnt = dao.idCheck(id);
	    
	    out.println("입력 ID : <strong>" + id + "</stong>");
	    
	    if (id.trim().isEmpty()) {
	        out.println("<p style='color: #F7819F'>아이디를 입력해주세요.</p><br>");
	    } else if (cnt == 0) {
	    	out.println("<p style='color: #35A0DE' >사용 가능한 아이디입니다.</p><br><br>");
			//out.println("<a href='javascript:apply(\"" + id + "\")'>[적용]</a>");		
	    }else{
	    	out.println("<p style='color: #F7819F'>해당 아이디는 사용하실 수 없습니다.</p>");
	    } //if end
	%>

	<br>
	<div style="display: inline-block; margin-right: 30px;">
	<input type="button" value="다시 검색" onclick="recheck();" class="btn-13" ></div>
	<input type="button" value="창 닫기" onclick="winclose();" class="btn-13" >
	
	
	
	<!-- <a href="javascript:history.back()">[다시 검색]</a>
	&nbsp;&nbsp; -->
	<!--  <a href="javascript:window.close()">[창 닫기]</a>-->

	<script>
	function recheck() { 
		history.back();
	 } 
	
	
	function winclose() { 
		window.close();  
	 } 
	
	
	
    function apply(id){
        //중복확인 id를 opener에 적용        
       // opener.document.regForm.id.value=id;
        window.close(); //창닫기
    } //apply () end
    
    </script>


</div>

    
    		
</body>
</html>