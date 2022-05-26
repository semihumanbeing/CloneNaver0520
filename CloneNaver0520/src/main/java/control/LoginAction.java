package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.MemberDAO;
import model.vo.MemberVO;

/**
 * Servlet implementation class LoginAction
 */
@WebServlet("/view/login.do")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 수신 인코딩설정
		request.setCharacterEncoding("utf-8");
		// 파라미터 받기
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		// 체크
		MemberVO vo = MemberDAO.getInstance().checkUserInfo(id, pwd);

		if (vo == null) {
			response.sendRedirect("loginFailed.jsp");
		} else if (vo.getPwd() == null) {
			response.sendRedirect("loginFailed.jsp");
		} else {
			response.sendRedirect("mainpage.jsp");
		}

	}

}
