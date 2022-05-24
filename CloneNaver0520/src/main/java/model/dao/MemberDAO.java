package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.service.DBService;
import model.vo.MemberVO;

public class MemberDAO {
	
	//single-ton : 객체 1개만 생성해서 사용하자!
	//스태틱객체는 무조건 하나만 만들어진다.
	static MemberDAO single = null;

	//스태틱은 무조건 스태틱으로만
	public static MemberDAO getInstance() {

		//객체가 없으면 생성해라 호출된 한번만 객체를 생성
		if (single == null)
			single = new MemberDAO();

		return single;
	}

	//외부에서 객체를 생성하지 못하게 막음
	private MemberDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public List<MemberVO> selectList() {

		List<MemberVO> list = new ArrayList<MemberVO>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from userInfo";

		try {
			//1.connection 얻어오기
			//				 커낵션 객체생성, DB에게 커낵션얻기
			conn = DBService.getInstance().getConnection();

			//2.PreparedStatement 얻어오기
			pstmt = conn.prepareStatement(sql);

			//3.ResultSet 얻어오기

			rs = pstmt.executeQuery();

			//4.포장(record -> Vo -> list)

			while (rs.next()) {
				//rs가 가리키는 행(레코드)의 값을 읽어온다.

				//Vo로 포장
				MemberVO vo = new MemberVO();
				vo.setId(rs.getString("id"));
				vo.setPwd(rs.getString("pwd"));
				vo.setName(rs.getString("name"));
				vo.setTel(rs.getString("tel"));
				vo.setGender(rs.getString("gender"));
				vo.setBirthday(rs.getString("birthday"));

				//list에 추가

				list.add(vo);

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {

			try {
				//연결(생성) 되었으면 닫아라.(생성 역순으로 닫기)
				if (rs != null)
					rs.close(); // 3
				if (pstmt != null)
					pstmt.close(); // 2
				if (conn != null)
					conn.close(); // 1

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return list;
	}
	
	
	}
