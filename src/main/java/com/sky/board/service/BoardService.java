package com.sky.board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sky.board.model.BoardVO;

public interface BoardService {
	void regist(HttpServletRequest request, HttpServletResponse response);
	List<BoardVO> getBoards(HttpServletRequest request, HttpServletResponse response);
	BoardVO getDetailBoard(HttpServletRequest request, HttpServletResponse response);
	void modifyBoard(HttpServletRequest request, HttpServletResponse response);
	void deleteBoard(HttpServletRequest request, HttpServletResponse response);
}
