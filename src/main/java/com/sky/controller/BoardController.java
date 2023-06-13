package com.sky.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sky.board.model.BoardVO;
import com.sky.board.service.BoardService;
import com.sky.board.service.BoardServiceImpl;

@WebServlet("*.board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardController() {
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
		BoardService service = new BoardServiceImpl();
		
		//글 목록 페이지
		if (command.equals("/board/board_list.board")) {
			List<BoardVO> list = service.getBoards(request, response);
			request.setAttribute("list", list);
			request.getRequestDispatcher("board_list.jsp").forward(request, response);
		
		//글 작성 페이지
		} else if (command.equals("/board/board_write.board")) {
			request.getRequestDispatcher("board_write.jsp").forward(request, response);
			
		//글 작성(등록) 기능
		} else if (command.equals("/board/registForm.board")) {
			service.regist(request, response);
			
			response.sendRedirect("board_list.board");
		}
	}
}
