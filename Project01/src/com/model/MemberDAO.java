
package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {

	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	MemberVO vo = null;
	int cnt = 0;
	ArrayList<MemberVO> al = null;
	boolean check = false;

	public void connection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String user = "campus_b_5_1025";
			String password = "smhrd5";

			// 2. 데이터베이스 연결 객체 (Connection) 생성
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("연결 성공");
		} catch (Exception e) {
			// 오류 출력
			e.printStackTrace();
			System.out.println("연결실패");
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (pst != null) {
				pst.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 회원 가입 기능(메서드)
	public int Join(String name, String id, String pw, String address) {

		try {
			connection();

			String sql = "insert into MMS values (?,?,?,?)";

			pst = conn.prepareStatement(sql);

			pst.setString(1, name);
			pst.setString(2, id);
			pst.setString(3, pw);
			pst.setString(4, address);

			// 6. sql문 실행 후 결과처리
			cnt = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println("가입실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	// 로그인 기능
	public MemberVO login(String id, String pw) {

		try {
			connection();

			String sql = "select name, id, address from MMS where id =? and pw=?";

			pst = conn.prepareStatement(sql);

			pst.setString(1, id);
			pst.setString(2, pw);

			rs = pst.executeQuery();

			if (rs.next()) {
				System.out.println("로그인성공");

				String get_name = rs.getString("name");
				String get_id = rs.getString("id");
				String get_address = rs.getString("address");

				vo = new MemberVO(get_name, get_id, get_address);

			} else {
				System.out.println("로그인실패");
			}

		} catch (Exception e) {
			System.out.println("로그인실패");
			e.printStackTrace();

		} finally {
			close();
		}
		return vo;

	}

	// 수정메서드
	// 사용자가 입력한 pw, tel, address
	// 로 테이블에 값을 수정
	public int update(String name, String id, String pw, String address) {

		try {
			connection();

			String sql = "UPDATE MMS SET pw = ?, name = ?, address = ? where id =?";

			pst = conn.prepareStatement(sql);

			pst.setString(1, pw);
			pst.setString(2, name);
			pst.setString(3, address);
			pst.setString(4, id);

			cnt = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println("수정실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	// 전체선택 메소드
	public ArrayList<MemberVO> selectAll() {
		al = new ArrayList<MemberVO>();

		try {
			connection();

			String sql = "select name, id, address from MMS";

			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			// rs.next() -> true / false
			while (rs.next()) {

				String get_name = rs.getString("name");
				String get_id = rs.getString("id");
				String get_address = rs.getString("address");

				vo = new MemberVO(get_name, get_id, get_address);

				al.add(vo);
			}

		} catch (Exception e) {
			System.out.println("조회실패");
			e.printStackTrace();

		} finally {
			close();
		}
		return al;
	}

	// 회원 삭제 메소드
	public int delete(String id) {
		try {
			connection();

			String sql = "delete from MMS where id =?";

			pst = conn.prepareStatement(sql);

			pst.setString(1, id);

			cnt = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println("삭제실패");
			e.printStackTrace();

		} finally {
			close();
		}
		return cnt;
	}

	// 아이디 중복체크
	public boolean idCheck(String id) {
		try {
			connection();

			String sql = "select id from MMS where id =?";

			pst = conn.prepareStatement(sql);

			pst.setString(1, id);

			rs = pst.executeQuery();
			
			//rs.next() -> true/false
			if (rs.next()) {
			//입력한 이메일을 사용할 수 있을 때
				check = true;
			} else {
			//입력한 이메일을 사용할 수 없을 때
				check = false;
			}

		} catch (Exception e) {
			System.out.println("로그인실패");
			e.printStackTrace();

		} finally {
			close();
		}
		return check;
	}
}
