package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.MemberDAO;
import model.vo.MemberVO;

/**
 * Servlet implementation class SignUpAction
 */
@WebServlet("/view/signup.do")
public class SignupAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");

	
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		String tel = request.getParameter("tel");
		String yy = request.getParameter("yy");
		String mm = request.getParameter("mm");
		String dd = request.getParameter("dd");
		if(Integer.parseInt(dd) < 10) {
			dd="0"+dd;
		}
		String birthday = String.format("%s-%s-%s", yy,mm,dd);

		MemberVO vo = new MemberVO(id, pwd, name, tel, gender, birthday);
	
		int res = MemberDAO.getInstance().insertMember(vo);

		
		response.sendRedirect("memberList.do");
		
	}

}
