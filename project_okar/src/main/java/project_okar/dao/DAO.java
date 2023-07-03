package project_okar.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import project_okar.vo.Car_Option;
import project_okar.vo.Car_Res_Info;
import project_okar.vo.OkayCar_Res;

public class DAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	// 판매중인 차량 list
	public List<OkayCar_Res> getCarList() {
	    List<OkayCar_Res> clist = new ArrayList<>();
	    String sql = "SELECT * FROM OKAY_CAR_REGISTER o, CAR_IMG ci\r\n"
	    		+ "WHERE SELL_OR_NOT='N'\r\n"
	    		+ "AND o.model = ci.model\r\n"
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
	                    rs.getString("SELL_OR_NOT"),
	                    rs.getString("IMG_SRC")
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
	
	// 차량 상세정보
	public OkayCar_Res getCarInfo(String car_num){
		OkayCar_Res ok = null;
		String sql = "SELECT *\r\n"
				+ "FROM OKAY_CAR_REGISTER o, CAR_IMG ci\r\n"
				+ "WHERE car_num = ?\r\n"
				+ "AND o.MODEL = ci.MODEL";
		try {
			conn = DB.conn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, car_num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ok = new OkayCar_Res(
	                    rs.getString("CAR_NUM"),
	                    rs.getString("MANUFACTOR"),
	                    rs.getString("MODEL"),
	                    rs.getString("VOLUME"),
	                    rs.getInt("PRICE"),
	                    rs.getInt("ACCIDENT_CNT"),
	                    rs.getInt("DRIVE_DIST"),
	                    rs.getDate("REGIST_TIME"),
	                    rs.getString("SELL_OR_NOT"),
	                    rs.getString("IMG_SRC")
						);
			}
			rs.close();
			pstmt.close();
			conn.close();
			
		}catch(SQLException e) {
			System.out.println("DB에러: " + e.getMessage());
		}catch(Exception e) {
			System.out.println("기타예외: " + e.getMessage());
		}finally {
			DB.close(rs, pstmt, conn);
		}
		return ok;
	}
	
	// 차량 정보
	public List<Car_Res_Info> getCarResInfo(){
		List<Car_Res_Info> mlist = new ArrayList<>();
		String sql = "SELECT\r\n"
				+ "LEVEL, cri.*\r\n"
				+ "FROM CAR_REGIST_INFO cri\r\n"
				+ "START WITH refno = 0\r\n"
				+ "CONNECT BY PRIOR CRI_NO = REFNO";
		try {
			conn = DB.conn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				mlist.add(new Car_Res_Info(
						rs.getInt("LEVEL"),
	                    rs.getInt("CRI_NO"),
	                    rs.getString("NAME"),
	                    rs.getInt("REFNO")
	            ));
			}
			rs.close();
			pstmt.close();
			conn.close();
			
		}catch(SQLException e) {
			System.out.println("DB에러: " + e.getMessage());
		}catch(Exception e) {
			System.out.println("기타예외: " + e.getMessage());
		}finally {
			DB.close(rs, pstmt, conn);
		}
		return mlist;
	}
	
	// 차량 옵션
	public List<Car_Option> getOptionInfo(){
		List<Car_Option> olist = new ArrayList<>();
		String sql = "SELECT * FROM OPTION_INFO";
		try {
			conn = DB.conn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				olist.add(new Car_Option(
						rs.getString("OPID"),
						rs.getString("OPNAME")
						));
			}
			rs.close();
			pstmt.close();
			conn.close();
			
		}catch(SQLException e) {
			System.out.println("DB에러: " + e.getMessage());
		}catch(Exception e) {
			System.out.println("기타예외: " + e.getMessage());
		}finally {
			DB.close(rs, pstmt, conn);
		}
		return olist;
	}
	
//	public String getManuList(String manu) {
//		String manuArr[] = manu.split(",");
//		for(int i=0; i<=manuArr.length; i++) {
//			
//		}
//		return manuArr;
//	}
	
	// 검색 필터별 차량 검색
	public List<OkayCar_Res> searchCar(String manu, String model, String vol, int price, int acc, int dist){
		List<OkayCar_Res> olist = new ArrayList<>();
		String sql = "SELECT *\r\n"
				+ "FROM OKAY_CAR_REGISTER\r\n"
				+ "WHERE MANUFACTOR IN ?\r\n"
				+ "AND MODEL IN ?\r\n"
				+ "AND VOLUME IN ?"
				+ "AND PRICE > ?\r\n"
				+ "AND ACCIDENT_CNT > ?\r\n"
				+ "AND DRIVE_DIST > ?";
		try {
			conn = DB.conn();
			pstmt = conn.prepareStatement(sql); 
	        pstmt.setString(1, "(" + manu + ")");
	        pstmt.setString(2, "(" + model + ")");
	        pstmt.setString(3, "(" + vol + ")");
	        pstmt.setInt(4, price);
	        pstmt.setInt(5, acc);
	        pstmt.setInt(6, dist);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				olist.add(new OkayCar_Res(
						rs.getString("manufactor"),
						rs.getString("model"),
						rs.getString("volume"),
						rs.getInt("price"),
						rs.getInt("accident_cnt"),
						rs.getInt("drive_dist"),
						rs.getDate("regist_time"),
						rs.getString("sell_or_not")
						));
			}
			rs.close();
			pstmt.close();
			conn.close();
			
		}catch(SQLException e) {
			System.out.println("DB에러: " + e.getMessage());
		}catch(Exception e) {
			System.out.println("기타예외: " + e.getMessage());
		}finally {
			DB.close(rs, pstmt, conn);
		}
		return olist;
	}
	
	// 키워드로 차량 검색
	public List<OkayCar_Res> searchKeyword(String sch){
		List<OkayCar_Res> olist = new ArrayList<>();
		String sql = "SELECT *\r\n"
				+ "FROM OKAY_CAR_REGISTER\r\n"
				+ "WHERE MANUFACTOR LIKE ?\r\n"
				+ "AND MODEL LIKE ?\r\n"
				+ "AND VOLUME LIKE ?\r\n";
		try {
			conn = DB.conn();
			pstmt = conn.prepareStatement(sql); 
	        pstmt.setString(1, "%" + sch + "%");
	        pstmt.setString(2, "%" + sch + "%");
	        pstmt.setString(3, "%" + sch + "%");
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				olist.add(new OkayCar_Res(
						rs.getString("manufactor"),
						rs.getString("model"),
						rs.getString("volume"),
						rs.getInt("price"),
						rs.getInt("accident_cnt"),
						rs.getInt("drive_dist"),
						rs.getDate("regist_time"),
						rs.getString("sell_or_not")
						));
			}
			rs.close();
			pstmt.close();
			conn.close();
			
		}catch(SQLException e) {
			System.out.println("DB에러: " + e.getMessage());
		}catch(Exception e) {
			System.out.println("기타예외: " + e.getMessage());
		}finally {
			DB.close(rs, pstmt, conn);
		}
		return olist;
	}
	
	
	public static void main(String[] args) {
		DAO dao = new DAO();
		List<Car_Res_Info> infolist = dao.getCarResInfo();
		for(Car_Res_Info cri:infolist) {
			if(cri.getLevel()==1) {
				System.out.print(cri.getLevel()+"\t");
				System.out.println(cri.getName());
			}
		}
	}
}
