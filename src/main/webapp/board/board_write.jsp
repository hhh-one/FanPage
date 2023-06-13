<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<div class="content" align="center">
	<h3>게시판 글 작성 페이지</h3>
	<hr>
	
	<form action="registForm.board" method="post">
		<table border="1" width="500">
			<tr>
				<td>글 제목</td>
				<td>
					<input type="text" name="title" >
				</td>
			</tr>
			<tr>
				<td>글 내용</td>
				<td>
					<textarea rows="10" style="width: 95%;" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="작성 완료" onclick="">
					&nbsp;&nbsp;
					<input type="button" value="목록" onclick="location.href='board_list.board' ">         
				</td>
			</tr>
			
		</table>
	</form>
</div>

<%@ include file="../include/footer.jsp" %>