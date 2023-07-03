<%@page import="project_okar.vo.OkayCar_Res"%>
<%@page import="java.util.List"%>
<%@page import="project_okar.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
%>
<%
DAO dao = new DAO();
String manu = request.getParameter("manu"); if(manu==null) manu="";
String model = request.getParameter("model"); if(model==null) model="";
String vol = request.getParameter("vol"); if(vol==null) vol="";
String priceS = request.getParameter("price");
String accS = request.getParameter("acc");
String distS = request.getParameter("dist");
int price = 0;
int acc = 0;
int dist = 0;
if(priceS!=null) price=Integer.parseInt(priceS);
if(accS!=null) price=Integer.parseInt(accS);
if(distS!=null) price=Integer.parseInt(distS);

List<OkayCar_Res> clist = dao.searchCar(manu, model, vol, price, acc, dist);
for (OkayCar_Res ok : clist) {
%>
<div class="col mb-5">
	<div class="card h-100"
		onclick="location.href='detailCar.jsp?car_num=<%=ok.getCar_num()%>';">
		<!-- Product image-->
		<img class="card-img-top" src="<%=ok.getImg_src()%>" alt="..." />
		<!-- Product details-->
		<div class="card-body p-4">
			<div class="text-center">
				<!-- Product name-->
				<h5 class="fw-bolder"><%=ok.getManufactor()%>
					<%=ok.getModel()%>
					<%=ok.getVolume()%></h5>
				<!-- Product price-->
				<%=ok.getPrice()%>만원
			</div>
		</div>
		<!-- Product actions-->
		<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
			<div class="text-center">
				<a class="btn btn-outline-dark mt-auto"
					href="detailCar.jsp?car_num=<%=ok.getCar_num()%>">View
					options</a>
			</div>
		</div>
	</div>
</div>
<%}%>