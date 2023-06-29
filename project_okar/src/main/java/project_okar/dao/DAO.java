package project_okar.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import project_okar.vo.OkayCar_Res;

public class DAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// img 테이블이랑 join
	public List<OkayCar_Res> getCarList() {
	    List<OkayCar_Res> clist = new ArrayList<>();
	    String sql = "SELECT * FROM OKAY_CAR_REGISTER o, CAR_IMG c\r\n"
	    		+ "WHERE o.model = c.model\r\n"
	    		+ "order by REGIST_TIME";
	    
	    try {
	        conn = DB.conn();
	        pstmt = conn.prepareStatement(sql); 
	        rs = pstmt.executeQuery();
	
	        while (rs.next()) {
	        	clist.add(new OkayCar_Res(
	                    rs.getString("CAR_NUM"),
	                    rs.getString("MANUFACTOR"),
	                    rs.getString("MODEL"),
	                    rs.getString("VOLUME"),
	                    rs.getInt("PRICE"),
	                    rs.getInt("ACCIDENT_CNT"),
	                    rs.getInt("DRIVE_DIST"),
	                    rs.getDate("REGIST_TIME"),
	                    rs.getString("SELL_OR_NOT")
	                   // rs.getString("CAR_IMG")
	            ));
	        }
	    } catch (SQLException e) {
	        System.out.println("DB 관련 오류: " + e.getMessage());
	    } catch (Exception e) {
	        System.out.println("일반 오류: " + e.getMessage());
	    } finally {
	        DB.close(rs, pstmt, conn);
	    }
	    return clist;
	}
	
	public static void main(String[] args) {
		
	}
}
