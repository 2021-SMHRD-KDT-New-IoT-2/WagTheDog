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
		
		//��û������ �޾��ֱ�
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String address = request.getParameter("address");
	
		MemberDAO dao = new MemberDAO();
		int cnt = dao.Join(name, id, pw, address);
		
		//�Ű����� ������ �°� �־�� ��
		
		if(cnt>0) {
			System.out.println("���Լ���");
			
			//forward ������� ������ �̵�
			RequestDispatcher rd = request.getRequestDispatcher("JoinService.html");
			
			//request������ ����ؾ��� ������ ����
			request.setAttribute("id",id);

			//������ �̵��� �� request, response��ü ����
			rd.forward(request, response);
			
			//������Ʈ�� ������� ������ ���� -> ���� ���� getParameter()�� �ޱ�
			//response.sendRedirect("join_succeess.jsp?email="+email);
			//�ݾ��ٶ��� getParameter�� �޾��־�� ��
			
			}else {
				
			System.out.println("���Խ���");
			response.sendRedirect("Main.html");
			
		}
	}

}
