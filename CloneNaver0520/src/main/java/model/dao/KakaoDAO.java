package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.service.DBService;
import model.vo.KakaoVO;

public class KakaoDAO {
	
	//single-ton : 객체 1개만 생성해서 사용하자!
	//스태틱객체는 무조건 하나만 만들어진다.
	static KakaoDAO single = null;

	//스태틱은 무조건 스태틱으로만
	public static KakaoDAO getInstance() {

		//객체가 없으면 생성해라 호출된 한번만 객체를 생성
		if (single == null)
			single = new KakaoDAO();

		return single;
	}

	//외부에서 객체를 생성하지 못하게 막음
	private KakaoDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public KakaoVO checkKakaoUserInfo(String idCheck) { // 로그인시 유저정보확인
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet result = null;
		KakaoVO setVo = null;
		
		String sql = "select id, nickname from kakaouser where id =?";
		
		try {
			conn = DBService.getInstance().getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, idCheck);
			
			result = pstmt.executeQuery();
			
			if(result.next()) {
				String id = result.getString("id");
				String nickname = result.getString("nickname");
				setVo = new KakaoVO();
				
				setVo.setId(id);
				setVo.setNickname(nickname);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			try {
				if(result != null) {
					result.close();
				} if (pstmt != null) {
					pstmt.close();
				} if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return setVo;
	}

}
