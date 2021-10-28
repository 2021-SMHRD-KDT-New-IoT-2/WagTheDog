package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class bbsDAO {
	
	private Connection conn = null;
	private ResultSet rs = null;

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
		}
	}
	
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pst = conn.prepareStatement(SQL);
			rs = pst.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	public int getNext() {
		String SQL = "SELECT bbsID FROM BBS ORDER BY bbsID DESC";
		try {
			PreparedStatement pst = conn.prepareStatement(SQL);
			rs = pst.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int write(String bbsTitle, String id, String bbsContent) {
		String SQL = "INSERT INTO BBS VALUES(?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pst = conn.prepareStatement(SQL);
			pst.setInt(1,  getNext());
			pst.setString(2,  bbsTitle);
			pst.setString(3,  id);
			pst.setString(4,  getDate());
			pst.setString(5,  bbsContent);
			pst.setInt(6, 1);
						
			return pst.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
