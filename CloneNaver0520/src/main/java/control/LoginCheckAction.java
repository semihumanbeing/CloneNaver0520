package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import model.dao.MemberDAO;
import model.vo.MemberVO;

/**
 * Servlet implementation class LoginCheckAction
 */
@WebServlet("/view/logincheck.do")
public class LoginCheckAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		
		MemberVO vo = MemberDAO.getInstance().checkUserInfo(id, pwd);
		
		boolean bResult = false;
		if(vo!=null) {
			bResult = true;
		}
		
	
		JSONObject json = new JSONObject();
		json.put("result", bResult);
		
		String jsonString = json.toJSONString();
		
		response.setContentType("text/json; charset=utf-8");
		response.getWriter().print(jsonString);

	}

}
