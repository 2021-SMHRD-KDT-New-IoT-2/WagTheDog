package conn.controlloer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String address = request.getParameter("address");
	
		MemberDAO dao = new MemberDAO();
		int cnt = dao.Join(name, id, pw, address);
		
	
		
			if(cnt>0) {
			System.out.println("가입성공");
			
			
			RequestDispatcher rd = request.getRequestDispatcher("LoginMain.jsp");
			
	
			request.setAttribute("id",id);

			rd.forward(request, response);

			
			}else {
				
			System.out.println("가입실패");
			response.sendRedirect("Main.jsp");
			
		}
	}

}
