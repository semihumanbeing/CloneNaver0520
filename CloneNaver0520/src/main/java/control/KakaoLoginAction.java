package control;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.KakaoDAO;
import model.vo.KakaoVO;

/**
 * Servlet implementation class KakaoLoginAction
 */
@WebServlet("/view/kakaologin.do")
public class KakaoLoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 수신 인코딩설정
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		
		KakaoVO vo = KakaoDAO.getInstance().checkKakaoUserInfo(id);

		if (vo == null) {
			response.sendRedirect("회원가입을 하셔야합니다.");
		} else {
			response.sendRedirect("mainpage.jsp");
		}

	}

}
