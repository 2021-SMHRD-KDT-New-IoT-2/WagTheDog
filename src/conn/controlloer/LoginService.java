package conn.controlloer;

import java.io.IOException;
import java.io.PrintWriter;
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
		response.setContentType("text/html;charset=utf-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.login(id, pw);
		
		
		if(vo != null) {

		HttpSession session = request.getSession();

		session.setAttribute("member", vo);
		
		response.sendRedirect("LoginMain.jsp");
		
		}else {
			
			PrintWriter out = response.getWriter(); 
			
			out.println("<script>alert('로그인 정보가 일치하지 않습니다.'); location.href='Main.jsp'</script>");
			out.flush();

		}
		
	}

}
