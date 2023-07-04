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
DAO dao = new DAO();
dao.updateSellOrNot(car_num);
%>