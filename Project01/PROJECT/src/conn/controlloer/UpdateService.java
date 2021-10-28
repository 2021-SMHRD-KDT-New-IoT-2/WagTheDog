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
request.setCharacterEncoding("euc-kr"); //��û�������� ���ڵ� ��� ����
		
		HttpSession session = request.getSession(); //���� ��ü ����
		MemberVO vo = (MemberVO)session.getAttribute("member"); //���� �α����� ������� ���� �� ����
		String id = vo.getId(); //���� �α����� ������� �̸���
		
		
		//������ ����� ����
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(id, pw, name, address);
		
		//dao ��� ȣ�� -> �������θ� �Ǵ��� �� �ִ� �� ��ȯ
		//���������� ��쿡�� �ܼ� -> ��������!
		//���������� ��쿡�� �ܼ� -> ��������!
		if(cnt>0) {
			System.out.println("��������");
			
			//������ �� ����ϵ��� ���Ǽ���
			MemberVO vo2 = new MemberVO(name, id, address);
			
			session.setAttribute("member", vo2);
			
			response.sendRedirect("LoginMain.jsp");
			
		}else {
			System.out.println("��������");
			response.sendRedirect("Main.html");
		}
	}

}