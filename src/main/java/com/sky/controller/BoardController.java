package com.sky.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		HttpSession session = request.getSession();
		/*
		 * 임의 접속 아이디: 포차코
		 */
		session.setAttribute("user_name", "포차코");
		
		//글 목록 페이지
		if (command.equals("/board/board_list.board")) {
			//글 목록 list 가져오기
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
		
		//글 상세 내용 페이지
		} else if (command.equals("/board/board_content.board")) {
			//글 상세 내용 가져오기
			BoardVO vo = service.getDetailBoard(request, response);
			request.setAttribute("vo", vo);
			request.getRequestDispatcher("board_content.jsp").forward(request, response);
			
		//글 수정 페이지
		} else if (command.equals("/board/board_modify.board")) {
			//수정 글 내용 가져오기
			BoardVO vo = service.getDetailBoard(request, response);
			request.setAttribute("vo", vo);
			request.getRequestDispatcher("board_modify.jsp").forward(request, response);
			
		//글 수정 기능
		} else if (command.equals("/board/board_update.board")) {
			service.modifyBoard(request, response);
			String bno = request.getParameter("bno");
			response.sendRedirect("board_content.board?bno=" + bno);
			
		//글 삭제 기능
		} else if (command.equals("/board/board_delete.board")) {
			service.deleteBoard(request, response);
			response.sendRedirect("board_list.board");
		}
	}
}
