package com.sky.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sky.comment.service.CommentService;
import com.sky.comment.service.CommentServiceImpl;

/**
 * Servlet implementation class CommentController
 */
@WebServlet("*.comment")
public class CommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CommentController() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글처리
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring(conPath.length());
		
		//들어가는 주소 확인
		System.out.println(command);
		
		//필요한 객체 선언
		CommentService commentService = new CommentServiceImpl();
		
		
		//댓글 작성 기능
		if (command.equals("/board/writeComment.comment")) {
			commentService.writeComment(request, response);
			String bno = request.getParameter("bno");
			System.out.println("controller 댓글 작성 bno:" + bno);
			response.sendRedirect("board_content.board?bno=" + bno);
			
		//댓글 삭제 기능
		} else if (command.equals("/board/deleteComment.comment")) {
			commentService.deleteComment(request, response);
			String bno = request.getParameter("bno");
			response.sendRedirect("board_content.board?bno=" + bno);
		}
	}

}
