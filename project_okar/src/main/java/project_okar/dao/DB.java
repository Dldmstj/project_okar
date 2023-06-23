package project_okar.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DB {
	public static Connection conn() throws SQLException {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			System.out.println("jdbc드라이버 예외" + e.getMessage());
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		conn = DriverManager.getConnection(info,"scott","tiger");
		System.out.println("연결 성공!");
		return conn;
	}
	
	public static void close(ResultSet rs, Statement stmt, Connection conn) {
		if(rs!=null) rs = null;		
		if(stmt!=null) stmt = null;		
		if(conn!=null) conn = null;
	}
	public static void main(String[] args) {
		try {
			conn();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(null,null,null);
		}
	}

}
