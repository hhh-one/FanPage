package com.sky.member.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;


public class MemberDAO {

	private static MemberDAO instance = new MemberDAO();

	private MemberDAO() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); //생성자에서 드라이버클래스 호출
		} catch (Exception e) {
		}		
	}	

	public static MemberDAO getInstance() { //getter를 통해서 객체를 반환
		return instance;
	}	
	
	//데이터베이스 연결 주소
	private String url = "jdbc:oracle:thin:@172.30.1.29:1521:xe";
	private String uid = "SKY";
	private String upw = "SKY";	

	//id중복체크
	public int idCheck(String id) {

		int result = 1;

		String sql = "select * from members where id = ?";
				
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			
			conn = DriverManager.getConnection(url, uid, upw);			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString( 1, id);			
			rs = pstmt.executeQuery(); 

			if(rs.next()) { //중복 o
				result = 1;
			} else { //중복 x
				result = 0;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
			}
		}

		return result; 
	} //idCheck end

	

	//닉네임 체크
	public int nameCheck(String name) {

		int result = 1;

		String sql = "select * from members where name = ?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			conn = DriverManager.getConnection(url, uid, upw);			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString( 1, name);			
			rs = pstmt.executeQuery(); 

			if(rs.next()) { //중복 o
				result = 1;
			} else { //중복 x
				result = 0;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
			}
		}

		return result; 

	} // nameCheck end

	

	//회원가입
	public void join(MemberVO vo) {
		
		String sql = "insert into members(id, pw, name, email, gender) values(?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId() );
			pstmt.setString(2, vo.getPw() );
			pstmt.setString(3, vo.getName() );
			pstmt.setString(4, vo.getEmail() );
			pstmt.setString(5, vo.getGender() );
			
			pstmt.executeUpdate(); //성공시 1, 실패시 0
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (Exception e2) {
			}
		}
	} //join end
	
	
	
	//로그인
	public MemberVO login(String id, String pw) {
		
		//로그인 성공이면 객체가 반환, 로그인 실패면 null값이 반환
		MemberVO vo = null;
		
		String sql = "select * from members where id = ? and pw = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				String id2 = rs.getString("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String gender = rs.getString("gender");
				//Timestamp regdate = rs.getTimestamp("regdate");
				
				vo = new MemberVO(id2, null, name, email, gender); //regdate
			} 
			
			System.out.println("로그인성공");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
			}
		}
		
		return vo;
	} //login end
	
	
	
	
	//회원정보 조회
	public MemberVO getInfo(String id) {
		
		MemberVO vo =null;
		
		String sql = "select * from members where id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id); //id
			
			rs = pstmt.executeQuery(); 
			
			if(rs.next()) {//id는 pk라서 1행
				
				String id2 = rs.getString("id");
				String name = rs.getString("name");				
				String email = rs.getString("email");
				String gender =rs.getString("gender");
				
				vo = new MemberVO(id2, null, name, email, gender); //, null
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
			}
		}
		return vo;
	} //getInfo end
	
	
	
	
	//회원정보 수정
	public int updateInfo(MemberVO vo) {
		
		int result = 0;
		
		String sql = "update members "
					+"set pw = ?, email = ?, gender = ? where id = ?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getPw() );
			pstmt.setString(2, vo.getEmail() );
			pstmt.setString(3, vo.getGender() );
			pstmt.setString(4, vo.getId());
			
			result = pstmt.executeUpdate(); //성공 1, 실패 0
			//conn.commit();
			System.out.println("결과: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (Exception e2) {
			}
		}
		
		return result;
	} //updateInfo end
	
	

	//회원 삭제
	public int deleteInfo(String id) { // String pw 삭제시 아이디 or 닉네임? memberVO vo or String name
				
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete from members where id=?";
		
		int result = 0;
		
		try {
	           conn = DriverManager.getConnection(url, uid, upw);
	           
	           pstmt = conn.prepareStatement(sql);
	           pstmt.setString(1, id);
	           pstmt.executeUpdate();	
//	           if(result == 1) {
//					pstmt.executeUpdate();	
//	           } else {
//					result = 0;
//				}	
		} catch (Exception e) {		
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();				
			} catch (SQLException e) {				
				e.printStackTrace();
			}
		}
	
		return result;
		
	}
}
