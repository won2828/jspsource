package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dto.BookDTO;

public class BookDAO {

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

//	static {
//		// 드라이버 로드
//		try {
//			Class.forName("oracle.jdbc.OracleDriver");
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
//	}

	public Connection getConnection(){
		Context initContext;
		try {
			initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/oracle");
			con = ds.getConnection();
		} catch (Exception e) {			
			e.printStackTrace();
		}
		return con;
	}

	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close(Connection con, PreparedStatement pstmt) {
		try {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// CRUD 메소드

	// R(Read) - 전체조회, 특정(pk) 조회, 제목 조회
	// 조회 메소드 작성하기
	// 리턴 타입 : List<~~~~DTO> or ~~~DTO ==> sql 구문 보고 결정
	// List<~~~~DTO> : where 절 없는 경우, where 절이 pk 가 아니면
	// ~~~DTO : where 절이 pk 인 경우

	// 전달인자 : () 에 어떻게 작성할 것인가?
	// sql 구문의 ? 보고 결정
	public BookDTO getRow(int code) {

		BookDTO dto = null;

		try {

			con = getConnection();
			String sql = "SELECT * FROM booktbl WHERE code = ?";
			pstmt = con.prepareStatement(sql);
			// sql 구문 ? 해결
			pstmt.setInt(1, code);
			rs = pstmt.executeQuery();
			// where pk 사용된 경우 하나만 추출됨
			if (rs.next()) {
				dto = new BookDTO();
				dto.setCode(rs.getInt("code"));
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				dto.setPrice(rs.getInt("price"));
				dto.setDescription(rs.getString("description"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return dto;
	}

	public List<BookDTO> getList(String keyword) {
		// 전체조회
		List<BookDTO> list = new ArrayList<BookDTO>();

		try {

			con = getConnection();
			String sql = "SELECT * FROM booktbl WHERE title LIKE ? ORDER BY CODE DESC";
			pstmt = con.prepareStatement(sql);
			// sql 구문 ? 해결
			pstmt.setString(1, "%"+keyword+"%");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				// dto 에 컬럼 별로 담고 list 에 추가
				BookDTO dto = new BookDTO();
				dto.setCode(rs.getInt("code"));
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				dto.setPrice(rs.getInt("price"));

				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return list;
	}

	// U(Update) - 수정
	// 수정 메소드 작성하기
	// 리턴타입 : int
	public int update(BookDTO updateDto) {

		int updateRow = 0;

		try {

			con = getConnection();
			String sql = "UPDATE booktbl SET price = ?, DESCRIPTION=? WHERE code = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, updateDto.getPrice());
			pstmt.setString(2, updateDto.getDescription());
			pstmt.setInt(3, updateDto.getCode());

			updateRow = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt);
		}
		return updateRow;
	}

	// D(Delete) - 삭제
	// 삭제 메소드 작성하기
	// 리턴타입 : int
	public int delete(int code) {

		int deleteRow = 0;

		try {

			con = getConnection();
			String sql = "DELETE FROM booktbl WHERE code = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, code);
			deleteRow = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt);
		}
		return deleteRow;
	}

	// C(Create) - 삽입
	// 삽입 메소드 작성하기
	// 리턴타입 : int
	public int insert(BookDTO insertDto) {
		int insertRow = 0;
		try {
			
			con = getConnection();
			String sql="INSERT INTO booktbl(code, title, writer, price, description) values(?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, insertDto.getCode());
			pstmt.setString(2, insertDto.getTitle());
			pstmt.setString(3, insertDto.getWriter());
			pstmt.setInt(4, insertDto.getPrice());
			pstmt.setString(5, insertDto.getDescription());
			
			insertRow = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(con, pstmt);
		}
		return insertRow;
	}
}