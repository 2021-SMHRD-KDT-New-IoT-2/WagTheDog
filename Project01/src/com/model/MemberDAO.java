
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

			// 2. �����ͺ��̽� ���� ��ü (Connection) ����
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("���� ����");
		} catch (Exception e) {
			// ���� ���
			e.printStackTrace();
			System.out.println("�������");
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

	// ȸ�� ���� ���(�޼���)
	public int Join(String name, String id, String pw, String address) {

		try {
			connection();

			String sql = "insert into MMS values (?,?,?,?)";

			pst = conn.prepareStatement(sql);

			pst.setString(1, name);
			pst.setString(2, id);
			pst.setString(3, pw);
			pst.setString(4, address);

			// 6. sql�� ���� �� ���ó��
			cnt = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println("���Խ���");
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	// �α��� ���
	public MemberVO login(String id, String pw) {

		try {
			connection();

			String sql = "select name, id, address from MMS where id =? and pw=?";

			pst = conn.prepareStatement(sql);

			pst.setString(1, id);
			pst.setString(2, pw);

			rs = pst.executeQuery();

			if (rs.next()) {
				System.out.println("�α��μ���");

				String get_name = rs.getString("name");
				String get_id = rs.getString("id");
				String get_address = rs.getString("address");

				vo = new MemberVO(get_name, get_id, get_address);

			} else {
				System.out.println("�α��ν���");
			}

		} catch (Exception e) {
			System.out.println("�α��ν���");
			e.printStackTrace();

		} finally {
			close();
		}
		return vo;

	}

	// �����޼���
	// ����ڰ� �Է��� pw, tel, address
	// �� ���̺� ���� ����
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
			System.out.println("��������");
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	// ��ü���� �޼ҵ�
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
			System.out.println("��ȸ����");
			e.printStackTrace();

		} finally {
			close();
		}
		return al;
	}

	// ȸ�� ���� �޼ҵ�
	public int delete(String id) {
		try {
			connection();

			String sql = "delete from MMS where id =?";

			pst = conn.prepareStatement(sql);

			pst.setString(1, id);

			cnt = pst.executeUpdate();

		} catch (Exception e) {
			System.out.println("��������");
			e.printStackTrace();

		} finally {
			close();
		}
		return cnt;
	}

	// ���̵� �ߺ�üũ
	public boolean idCheck(String id) {
		try {
			connection();

			String sql = "select id from MMS where id =?";

			pst = conn.prepareStatement(sql);

			pst.setString(1, id);

			rs = pst.executeQuery();
			
			//rs.next() -> true/false
			if (rs.next()) {
			//�Է��� �̸����� ����� �� ���� ��
				check = true;
			} else {
			//�Է��� �̸����� ����� �� ���� ��
				check = false;
			}

		} catch (Exception e) {
			System.out.println("�α��ν���");
			e.printStackTrace();

		} finally {
			close();
		}
		return check;
	}
}
