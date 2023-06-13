package com.sky.board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sky.board.model.BoardDAO;
import com.sky.board.model.BoardVO;

public class BoardServiceImpl implements BoardService {
	BoardDAO dao = BoardDAO.getInstance();

	
	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		//username : 포차코로 임의 설정
		session.setAttribute("name", "포차코");
		
		String name = (String) session.getAttribute("name");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		dao.regist(name, title, content);
	}
	
	@Override
	public List<BoardVO> getBoards(HttpServletRequest request, HttpServletResponse response) {
		List<BoardVO> list = dao.getBoards();
		return list;
	}
}
