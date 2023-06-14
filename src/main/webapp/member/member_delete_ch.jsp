<%@page import="com.sky.member.model.MemberDAO"%>
<%@page import="com.sky.member.model.MemberVO"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>skyblue in your eyes</title>
</head>
<%-- <%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	MemberDAO dao = MemberDAO.getInstance();  
	int succ = dao.deleteInfo(id);
	
	if(succ > 0) {
		out.println("<script> alert('삭제 성공!');");		
	} else {
		out.println("<script> alert('삭제 실패!');");		
	}
%>  --%>
 	<br><br>
        <b><font size="4" color="gray">회원정보가 삭제되었습니다.</font></b>
        <br><br><br>
    
        <input type="button" value="확인" onclick="location.href='../main.jsp'" style="background-color: #dcdcdc; border-color: white; color: #646464; width: 90px; height: 30px;">

</body>
</html>