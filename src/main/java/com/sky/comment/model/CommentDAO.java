package com.sky.comment.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class CommentDAO {
	private static CommentDAO instance = new CommentDAO();
	
	private CommentDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private String url = "jdbc:oracle:thin:@172.30.1.29:1521:xe";
	private String uid = "SKY";
	private String upw = "SKY";

	public static CommentDAO getInstance() {
		return instance;
	}
	
	//특정 글에 해당하는 댓글 list
	public List<CommentVO> getComments(String bno) {
		List<CommentVO> list = new ArrayList<>();
		
		String sql = "SELECT * FROM COMMENTS WHERE BNO = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bno);
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String name = rs.getString("name");
				String content = rs.getString("content");
				Timestamp regdate = rs.getTimestamp("regdate");
				CommentVO vo = new CommentVO(0, name, bno, content, regdate);
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return list;
	}
	
	//댓글 작성
	public void writeComment(String name, int bno, String content) {
		String sql = "INSERT INTO COMMENTS VALUES(COMMENTS_SEQ.NEXTVAL, ?, ?, ?, SYSDATE)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, bno);
			pstmt.setString(3, content);
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
