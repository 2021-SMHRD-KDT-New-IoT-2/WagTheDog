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
		
		//요청데이터 받아주기
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String address = request.getParameter("address");
	
		MemberDAO dao = new MemberDAO();
		int cnt = dao.Join(name, id, pw, address);
		
		//매개변수 갯수에 맞게 넣어야 함
		
		if(cnt>0) {
			System.out.println("가입성공");
			
			//forward 방식으로 페이지 이동
			RequestDispatcher rd = request.getRequestDispatcher("JoinService.html");
			
			//request영역에 기억해야할 데이터 설정
			request.setAttribute("id",id);

			//페이지 이동할 시 request, response객체 전달
			rd.forward(request, response);
			
			//쿼리스트링 방식으로 데이터 전송 -> 받을 때는 getParameter()로 받기
			//response.sendRedirect("join_succeess.jsp?email="+email);
			//닫아줄때는 getParameter로 받아주어야 함
			
			}else {
				
			System.out.println("가입실패");
			response.sendRedirect("Main.html");
			
		}
	}

}
