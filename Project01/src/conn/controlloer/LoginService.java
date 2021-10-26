package conn.controlloer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginService")
public class LoginService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		try {		
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "JDBC:oracle:thin:@211.105.164.194:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			
			Connection conn = DriverManager.getConnection(url, dbid, dbpw);
		
			
			String sql = "select * from mms where id = ? and pw = ?";
			
			PreparedStatement psmt = conn.prepareStatement(sql);
			
			psmt.setString(1,id);
			psmt.setString(2,pw);
			
			ResultSet rs = psmt.executeQuery();
		
			//T / F로 반환됨
			
			if(rs.next()==true){
				System.out.println("로그인성공");
				response.sendRedirect("LoginMain.html");
			}else{
				System.out.println("로그인실패");
				response.sendRedirect("Main.html");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
