<%@page import="com.sky.member.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>skyblue in your eyes</title>
</head>

<body>

	<div style="text-align: center">

	<h3> 아이디 중복 확인 결과 </h3>
	
<%
	//사용가능한 아이디일 경우, 아이디 입력 폼에 넣기
	    String id=request.getParameter("id");
	    MemberDAO dao = MemberDAO.getInstance();    
	    int cnt = dao.idCheck(id);
	    
	    out.println("입력 ID : <strong>" + id + "</stong>");
	    
	    if (id.trim().isEmpty()) {
	        out.println("<p style='color: red'>아이디를 입력해주세요.</p>");
	    } else if (cnt == 0) {
	    	out.println("<p>사용 가능한 아이디입니다.</p>");
			//out.println("<a href='javascript:apply(\"" + id + "\")'>[적용]</a>");		
	    }else{
	    	out.println("<p style='color: red'>해당 아이디는 사용하실 수 없습니다.</p>");
	    } //if end
	%>

	<hr>
	<a href="javascript:history.back()">[다시 검색]</a>
	&nbsp;&nbsp;
	<a href="javascript:window.close()">[창 닫기]</a>

	<script>
    function apply(id){
        //중복확인 id를 opener에 적용        
       // opener.document.regForm.id.value=id;
        window.close(); //창닫기
    } //apply () end
    
    </script>


</div>

    
    		
</body>
</html>