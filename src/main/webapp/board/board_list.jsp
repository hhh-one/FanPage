<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp" %>

<div class="content">
	<div class="content-wrap">
		<div class="list-title">BOARD</div>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>글 번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성일</th>
					<th>조회</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="board" items="${ list }">
					<tr>
						<td>${ board.bno }</td>
						<td><a href="board_content.board?bno=${ board.bno }">${ board.title }</a></td>
						<td>${ board.name }</td>
						<td><fmt:formatDate value="${ board.regdate }" pattern="yyyy.MM.dd" /></td>
						<td>${ board.hit }</td>
					</tr>
				</c:forEach>
			</tbody>	
			
			<tbody>
				<tr>
					<td colspan="5" align="right">
						<form action="" class="form-inline" >
						  <div class="form-group">
							<input type="button" value="글 작성" class="btn btn-default" onclick="location.href='board_write.board'">
						  </div>
						</form> 
					</td>
				</tr>
			</tbody>
			
		</table>
	</div>
</div>

<%@ include file="../include/footer.jsp" %>