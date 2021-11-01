package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class WebCareDAO {
	
	Connection conn = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	int cnt = 0;
	
	public void connection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String user = "campus_b_5_1025";
			String password = "smhrd5";

			// 2. 데이터베이스 연결 객체 (Connection) 생성
			conn = DriverManager.getConnection(url, user, password);
			
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
	
	public int webcare(String medicine, String hospital, String memo, String memodate) {
		try{
			connection();

		String sql = "insert into MEMOtable values (?,?,?,?)";

		pst = conn.prepareStatement(sql);

		pst.setString(1, medicine);
		pst.setString(2, hospital);
		pst.setString(3, memo);
		pst.setString(4, memodate);


		// 6. sql문 실행 후 결과처리
		cnt = pst.executeUpdate();

	} catch (Exception e) {
		System.out.println("기입실패");
		e.printStackTrace();
	} finally {
		close();
	}
	return cnt;
	}
}

