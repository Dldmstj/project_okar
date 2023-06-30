<%@page import="project_okar.vo.Car_Option"%>
<%@page import="project_okar.vo.Car_Res_Info"%>
<%@page import="java.util.List"%>
<%@page import="project_okar.vo.OkayCar_Res"%>
<%@page import="project_okar.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Okar - 내차사기</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="../resources/static/assets/logo.png" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../resources/static/css/styles.css" rel="stylesheet" />
<link href="../resources/static/css/styles_sidebar.css" rel="stylesheet" />
<style type="text/css">
input[type=checkbox] {
	position: relative;
	outline: 0;
	display: none;
	flex: 1;
}

input[type=checkbox]+label {
	color: #16171d;
	letter-spacing: -.05rem;
	border-radius: 0.3rem;
	background-color: #fff;
	white-space: nowrap;
	border: 2px solid #dcdfe6;
	color: #606266;
	outline: 0;
	margin: 0;
	position: relative;
	cursor: pointer;
	transition: all .3s cubic-bezier(.645, .045, .355, 1);
	padding: 8px;
	font-size: 14px;
}

input[type=checkbox]:checked+label {
	color: #16171d;
	border-color: #b70f28;
	background-color: #fff;
	box-shadow: 0 2px 4px 0 rgba(22, 23, 29, .04) !important;
}
</style>
</head>
<body>
	<iframe src="header.jsp"
		style="width: 100%; height: 100%; overflow: hidden;" scrolling="no"></iframe>
	<!-- Navigation-->

	<!-- Header-->
	<header style="background-color: #F15F5F" class="py-5">
		<div class="container px-4 px-lg-5 my-5"
			style="background-color: #F15F5F">
			<div class="text-center text-white">
				<h1 class="display-4 fw-bolder">내차 사기</h1>
			</div>
		</div>
	</header>
	<%-- checkbox jsp로 출력할 방법 찾아보기 .. --%>
<body>
	<div class="d-flex" id="wrapper">
		<!-- Sidebar-->
		<div class="border-end bg-white" id="sidebar-wrapper">
			<div class="container-fluid">
				<button type="button" style="background-color: #F15F5F"
					class="easySchBtn" data-bs-toggle="modal" data-bs-target="#myModal">간편검색</button>
			</div>
			<div class="modal" id="myModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">차량 간편 검색</h4>
							<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
						</div>
						<!-- Modal body -->
						<div class="modal-body">
							<button onclick="kind_Car2()"
								class="list-group-item list-group-item-action list-group-item-light p-3">차종</button>
							<div style="display: none;" class="list-group list-group-flush"
								id="kind_Car2">
								<input type="checkbox" name="kind" id="경차2" value="경차" /><label
									for="경차2">경차</label> <input type="checkbox" name="kind"
									id="소형차2" value="소형차" /><label for="소형차2">소형차</label> <input
									type="checkbox" name="kind" id="준중형차2" value="소형차" /><label
									for="준중형차2">준중형차</label> <input type="checkbox" name="kind"
									id="대형차2" value="대형차" /><label for="대형차2">대형차</label> <input
									type="checkbox" name="kind" id="스포츠카2" value="스포츠카" /><label
									for="스포츠카2">스포츠카</label> <input type="checkbox" name="kind"
									id="SUV2" value="SUV" /><label for="SUV2">SUV</label> <input
									type="checkbox" name="kind" id="RV2" value="RV" /><label
									for="RV2">RV</label> <input type="checkbox" name="kind"
									id="경승합차2" value="경승합차" /><label for="경승합차2">경승합차</label> <input
									type="checkbox" name="kind" id="승합차2" value="승합차" /><label
									for="승합차2">승합차</label> <input type="checkbox" name="kind"
									id="화물차2" value="화물차" /><label for="화물차2">화물차</label> <input
									type="checkbox" name="kind" id="버스2" value="버스" /><label
									for="버스2">버스</label>
							</div>
							<button onclick="pay_Car2()"
								class="list-group-item list-group-item-action list-group-item-light p-3">가격</button>
							<div style="display: none;" class="list-group list-group-flush"
								id="pay_Car2">
								<%
								for (int i = 100; i <= 900; i += 100) {
								%>
								<input type="checkbox" name="pay" id="<%=i%>백2" value="<%=i%>" /><label
									for="<%=i%>백2"><%=i / 100%>백</label>
								<%
								}
								for (int i = 1000; i <= 9000; i += 1000) {
								%>
								<input type="checkbox" name="pay" id="<%=i%>천2" value="<%=i%>" /><label
									for="<%=i%>천2"><%=i / 1000%>천</label>
								<%
								}
								%>
							</div>
						</div>
						<!-- Modal footer -->
						<div class="modal-footer">
							<button type="button" class="btn btn-danger"
								data-bs-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
			</div>
			<button onclick="kind_Car()"
				class="list-group-item list-group-item-action list-group-item-light p-3">차종</button>
			<div style="display: none;" class="list-group list-group-flush"
				id="kind_Car">
				<input type="checkbox" name="kind" id="경차" value="경차" /><label
					for="경차">경차</label> <input type="checkbox" name="kind" id="소형차"
					value="소형차" /><label for="소형차">소형차</label> <input type="checkbox"
					name="kind" id="준중형차" value="소형차" /><label for="준중형차">준중형차</label>
				<input type="checkbox" name="kind" id="대형차" value="대형차" /><label
					for="대형차">대형차</label> <input type="checkbox" name="kind" id="스포츠카"
					value="스포츠카" /><label for="스포츠카">스포츠카</label> <input
					type="checkbox" name="kind" id="SUV" value="SUV" /><label
					for="SUV">SUV</label> <input type="checkbox" name="kind" id="RV"
					value="RV" /><label for="RV">RV</label> <input type="checkbox"
					name="kind" id="경승합차" value="경승합차" /><label for="경승합차">경승합차</label>
				<input type="checkbox" name="kind" id="승합차" value="승합차" /><label
					for="승합차">승합차</label> <input type="checkbox" name="kind" id="화물차"
					value="화물차" /><label for="화물차">화물차</label> <input type="checkbox"
					name="kind" id="버스" value="버스" /><label for="버스">버스</label>
			</div>
			<button onclick="company_Car()"
				class="list-group-item list-group-item-action list-group-item-light p-3">제조사</button>
			<div style="display: none;" class="list-group list-group-flush"
				id="company_Car">
				<%
				DAO dao = new DAO();
				List<Car_Res_Info> infolist = dao.getCarResInfo();
				for (Car_Res_Info cri : infolist) {
					if (cri.getLevel() == 1) {
				%>
				<input type="checkbox" name="company" id="<%=cri.getName()%>"
					value="<%=cri.getCri_no()%>" /> <label for="<%=cri.getName()%>"><%=cri.getName()%></label>
				<%}%>
				<%}%>
			</div>
			<button onclick="model_Car()"
				class="list-group-item list-group-item-action list-group-item-light p-3">모델명</button>
			<div style="display: none;" class="list-group list-group-flush"
				id="model_Car">
				<%
				for (Car_Res_Info cri : infolist) {
					if (cri.getLevel() == 2) {
				%>
				<input type="checkbox" name="company" id="<%=cri.getName()%>"
					value="<%=cri.getCri_no()%>" /> <label for="<%=cri.getName()%>"><%=cri.getName()%></label>
				<%}%>
				<%}%>
			</div>
			<button onclick="year_Car()"
				class="list-group-item list-group-item-action list-group-item-light p-3">연식</button>
			<div style="display: none;" class="list-group list-group-flush"
				id="year_Car">
				<select name="year_min" id="year_min">
					<%
					for (int i = 2000; i <= 2023; i++) {
					%>
					<option id="<%=i%>" value="<%=i%>"><%=i%></option>
					<%}%>
				</select> <span> ~ </span> <select name="year_max" id="year_max">
					<%
					for (int i = 2000; i <= 2023; i++) {
					%>
					<option id="<%=i%>" value="<%=i%>"><%=i%></option>
					<%}%>
				</select>
			</div>
			<button onclick="diriving_Car()"
				class="list-group-item list-group-item-action list-group-item-light p-3">주행거리</button>
			<div style="display: none;" class="list-group list-group-flush"
				id="diriving_Car">
				<select name="driving_min" id="driving_min">
					<%
					for (int i = 10000; i <= 100000; i += 10000) {
					%>
					<option id="<%=i%>" value="<%=i%>"><%=i%>km
					</option>
					<%}%>
				</select> <span> ~ </span> <select name="driving_max" id="driving_min">
					<%
					for (int i = 10000; i <= 100000; i += 10000) {
					%>
					<option id="<%=i%>" value="<%=i%>"><%=i%>km
					</option>
					<%}%>
				</select>
			</div>
			<button onclick="pay_Car()"
				class="list-group-item list-group-item-action list-group-item-light p-3">가격</button>
			<div style="display: none;" class="list-group list-group-flush"
				id="pay_Car">
				<%
				for (int i = 100; i <= 900; i += 100) {
				%>
				<input type="checkbox" name="pay" id="<%=i%>백" value="<%=i%>" /><label
					for="<%=i%>백"><%=i / 100%>백</label>
				<%
				}
				for (int i = 1000; i <= 9000; i += 1000) {
				%>
				<input type="checkbox" name="pay" id="<%=i%>천" value="<%=i%>" /><label
					for="<%=i%>천"><%=i / 1000%>천</label>
				<%
				}
				%>
			</div>
			<button onclick="option_Car()"
				class="list-group-item list-group-item-action list-group-item-light p-3">옵션</button>
			<div style="display: none;" class="list-group list-group-flush"
				id="option_Car">
				<%
				List<Car_Option> olist = dao.getOptionInfo();
				for (Car_Option co : olist) {
				%>
				<input type="checkbox" name="company" id="<%=co.getOpName()%>"
					value="<%=co.getOpId()%>" />
					<label for="<%=co.getOpName()%>"><%=co.getOpName()%></label>
				<%}%>
			</div>
			<button onclick="fuel_Car()"
				class="list-group-item list-group-item-action list-group-item-light p-3">연료</button>
			<div style="display: none;" class="list-group list-group-flush"
				id="fuel_Car">
				<%
				for (Car_Res_Info cri : infolist) {
					if (cri.getLevel() == 3) {
				%>
				<input type="checkbox" name="company" id="<%=cri.getName()%>"
					value="<%=cri.getCri_no()%>" /> <label for="<%=cri.getName()%>"><%=cri.getName()%></label>
				<%}%>
				<%}%>
			</div>
			<button onclick="crush_Car()"
				class="list-group-item list-group-item-action list-group-item-light p-3">사고유무</button>
			<div style="display: none;" class="list-group list-group-flush"
				id="crush_Car">
				<input type="checkbox" name="crush" id="모두포함" value="모두포함" /><label
					for="모두포함">모두포함</label> <input type="checkbox" name="crush"
					id="무사고" value="무사고" /><label for="무사고">무사고</label> <input
					type="checkbox" name="crush" id="단순수리" value="단순수리" /><label
					for="단순수리">단순수리</label> <input type="checkbox" name="crush" id="사고"
					value="사고" /><label for="사고">사고</label>
			</div>
			<button onclick="selltype()"
				class="list-group-item list-group-item-action list-group-item-light p-3">판매구분</button>
			<div style="display: none;" class="list-group list-group-flush"
				id="selltype">
				<input type="radio" name="selltype" class="selltype" id="전체"
					value="전체" /><label for="전체">전체</label> <input type="radio"
					name="selltype" class="selltype" id="일반" value="일반" /><label
					for="일반">일반</label> <input type="radio" name="selltype"
					class="selltype" id="리스" value="리스승계" /><label for="리스">리스</label>
			</div>
		</div>
		<!-- Page content wrapper-->
		<div id="page-content-wrapper">
			<!-- Top navigation-->
			<nav
				class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
				<div class="container-fluid">
					<form class="searchForm">
						<input type="text" class="searchBox" placeholder="원하는 차량을 검색하세요." />
						<input type="button" class="searchBtn" value="검색" />
					</form>
				</div>
			</nav>
			<!-- Page content-->
			<!-- jsp / list로 반복문 사용해서 판매중인 차량 노출 -->
			<div class="container-fluid">
				<!-- Section-->
				<section class="py-5">
					<div class="container px-4 px-lg-5 mt-5">
						<div
							class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
							<%
							List<OkayCar_Res> clist = dao.getCarList();
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
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="../resources/static/js/scripts_sidebar.js"></script>
</body>
</html>
