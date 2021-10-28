package conn.controlloer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;


@WebServlet("/IdCheckService")
public class IdCheckService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		
		System.out.println(id);
		
		MemberDAO dao = new MemberDAO();
		boolean check = dao.idCheck(id);
		//T/F 값을 확인해서 ajax쪽으로 넘겨줌
		
		//출력 String (server->client)
		PrintWriter out = response.getWriter();
		//통로를 통해서 응답데이터를 출력
		out.print(check);
	}

}
