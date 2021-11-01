package conn.controlloer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberVO;
import com.model.WebCareDAO;


@WebServlet("/WebCaring")
public class WebCaring extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String medicine = request.getParameter("medicine");
		String hospital = request.getParameter("hospital");
		String memo = request.getParameter("memo");
		String memodate = request.getParameter("memodate");
		
		WebCareDAO dao = new WebCareDAO();
		int vo = dao.webcare(medicine, hospital, memo, memodate);
		
		System.out.println(medicine);
		System.out.println(hospital);
		System.out.println(memodate);
		System.out.println(memo);

		int cnt = dao.webcare(medicine, hospital, memo, memodate);
		
	
		if(cnt>0) {
			System.out.println("WebCare 정보등록 완료");
			

			out.println("<script>alert('정보가 저장되었습니다.'); location.href='WebCare.jsp'</script>");
			out.flush();
			
			}else {
				
			out.println("<script>alert('정보가 저장되지 않았습니다.'); location.href='WebCare.jsp'</script>");
			out.flush();
			
		}
		
		
	}

}
