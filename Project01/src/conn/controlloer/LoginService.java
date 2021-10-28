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
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberVO;


@WebServlet("/LoginService")
public class LoginService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.login(id, pw);
		
		
		if(vo != null) {
		//���� ��ü ����
		HttpSession session = request.getSession();
		
		//���� �� ����, �α��� �� ������� ����
		session.setAttribute("member", vo);
		
		response.sendRedirect("LoginMain.jsp");
		
		}else {
			response.sendRedirect("Main.jsp");
		}
		
	}

}
