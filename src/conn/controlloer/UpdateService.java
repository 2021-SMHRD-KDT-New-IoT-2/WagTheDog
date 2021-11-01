package conn.controlloer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberVO;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("euc-kr"); //요청데이터의 인코딩 방식 지정
		
		HttpSession session = request.getSession(); //세션 객체 생성
		MemberVO vo = (MemberVO)session.getAttribute("member"); //현재 로그인한 사용자의 수정 전 정보
		String id = vo.getId(); //현재 로그인한 사용자의 ID
		
	
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(id, pw, name, address);
		

		if(cnt>0) {
			System.out.println("수정성공");

			MemberVO vo2 = new MemberVO(name, id, address);
			
			session.setAttribute("member", vo2);
			
			response.sendRedirect("LoginMain.jsp");
			
		}else {
			System.out.println("수정실패");
			response.sendRedirect("Main.html");
		}
	}

}
