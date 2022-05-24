package model.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBService {
	
	DataSource ds;
	
	//single-ton : 객체 1개만 생성해서 사용하자!
	//스태틱객체는 무조건 하나만 만들어진다.
	static DBService single = null;

	//스태틱은 무조건 스태틱으로만
	public static DBService getInstance() {

		//객체가 없으면 생성해라 호출된 한번만 객체를 생성
		if (single == null)
			single = new DBService();

		return single;
	}

	//외부에서 객체를 생성하지 못하게 막음
	private DBService() {
		
		try {
			
			// 1. Initial Context 생성
			InitialContext ic = new InitialContext();
			// 2. Resource의 저장소 Context 정보 구하기
			Context context = (Context) ic.lookup("java:comp/env");
			// 3. name을 가지고 Context 내의 Resources 정보를 획득하기
			ds = (DataSource) context.lookup("jdbc/oracle_test");
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public Connection getConnection() throws SQLException {
		return ds.getConnection();
	}
	

}
