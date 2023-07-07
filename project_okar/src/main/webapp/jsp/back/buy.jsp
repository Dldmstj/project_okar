<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="project_okar.vo.OkayCar_Res"%>
<%@page import="java.util.List"%>
<%@page import="project_okar.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String car_num = request.getParameter("car_num"); 
if(car_num==null){
	car_num="";
}
String mem_id = request.getParameter("mem_id"); 
if(mem_id==null){
	mem_id="";
}
String tot_priceS = request.getParameter("tot_price");
int tot_price = 0;
if(tot_priceS!=null){
	tot_price = Integer.parseInt(tot_priceS);
}

System.out.println(mem_id);
DAO dao = new DAO();
dao.updateSellOrNot(car_num);
dao.insertSell_info(car_num,tot_price,mem_id);
%>