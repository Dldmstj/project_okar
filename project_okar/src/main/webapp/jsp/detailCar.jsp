<%@page import="project_okar.vo.OkayCar_Res"%>
<%@page import="java.text.DecimalFormat"%>
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
<title>차량 상세페이지</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="../resources/static/assets/logo.png" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../resources/static/css/styles.css" rel="stylesheet" />
</head>
<%
DecimalFormat decFormat = new DecimalFormat("###,###");	// 쉼표 찍는 내장 객체
String carCostS = request.getParameter("carCost");	// 차량가격
if(carCostS==null) carCostS="";
int carCost = 0;
if(carCostS!=null) carCost = Integer.parseInt(carCostS);

// dao (차량 정보 불러오기)

// vo
OkayCar_Res ok = new OkayCar_Res();

// 차량 선수금
int advance = (int)(carCost * 0.3);

// 이전등록비
// 취득세(차량금액*0.07) + 공채매입비 + 인지대(3000원) + 증지대(1000원)
// 대략적으로 취득세 + 인지대 + 증지대 정도 계산하는 메서드
int transfer = 0;
int tot_cost = 0;			// 지불할 총 금액 (차량가격 + 관리비 + 수수료 + 이전등록비)
%>
<body>
	<iframe src="header.jsp"
		style="width: 100%; height: 100%; overflow: hidden;" scrolling="no"></iframe>
	
	<!-- Product section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
			<%-- 제조사 + 차량이름 + 배기량 조합으로 차량 제목 --%>
				<h1 class="display-5 fw-bolder">기아 더 뉴 K5 LPI 디럭스</h1>
				<div class="col-md-6">
					<img class="card-img-top mb-5 mb-md-0" src="../car_img/kia_k5.png"
						alt="..." />
				</div>
			</div>
		</div>
	</section>
	<div>
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">
					<h1 class="display-5 fw-bolder"><%=decFormat.format(carCost)%>원</h1>
					<ul class="carOptionLists">
						<li class="fs-5 mb-5"><span>13년 7월식(14년형)</span></li>
						<li class="fs-5 mb-5"><span>93,554km</span></li>
						<li class="fs-5 mb-5"><span>2건</span></li>
						<li class="fs-5 mb-5"><span>단순수리</span></li>
					</ul>
					<p class="lead">차량 예상 가격</p>
					<input type="text" class="price-inner" value="<%=decFormat.format(carCost) %>" />원 
					<p class="lead">선수금</p>
					<input type="text" class="price_2-inner" value="<%=advance/10000 %>"/>만원
					<p class="lead">할부기간</p>
					<div class="monthlyRadio">
						<input type="radio" name="radioBtn" id="12개월" value="12개월" /><label
							for="12개월" class="radio-inner">12개월</label> <input type="radio"
							name="radioBtn" id="24개월" value="24개월" /><label for="24개월"
							class="radio-inner">24개월</label> <input type="radio"
							name="radioBtn" id="36개월" value="36개월" /><label for="36개월"
							class="radio-inner">36개월</label> <input type="radio"
							name="radioBtn" id="48개월" value="48개월" /><label for="48개월"
							class="radio-inner">48개월</label> <input type="radio"
							name="radioBtn" id="60개월" value="60개월" /><label for="60개월"
							class="radio-inner">60개월</label> <input type="radio"
							name="radioBtn" id="72개월" value="72개월" /><label for="72개월"
							class="radio-inner">72개월</label>
					</div>
					<%-- 월 할부금 출력될 공간 --%>
				</div>
				<div class="col-md-6" id="tot-price">
					<%-- 제조사 + 차량이름 + 배기량 조합으로 차량 제목 --%>
					<h1 class="display-5 fw-bolder" style="font-size: 30pt;">기아 더 뉴 K5 LPI 디럭스</h1>
 
					<p class="lead">총 구매 예상 비용</p>
					<div class="el-collapse-item__content">
						<ul class="costDetailLists">
							<li class="tot-li"><span>차량가</span><span><%=decFormat.format(carCost) %>원</span></li>
							<li class="tot-li"><span>이전등록비</span><span><%=transfer %>원</span></li>
							<li class="tot-li"><span>관리비용</span><span><%=decFormat.format(ok.manage_cost) %>원</span></li>
							<li class="tot-li"><span>등록신청대행수수료</span><span><%=decFormat.format(ok.agency_fee) %>원</span></li>
							<li class="tot-li"><span>배송비</span><span>배송 지역에 따라 달라집니다.</span></li>
							<li class="tot-li"><span>합계</span><span style="color: red;"><%=tot_cost %>원</span></li>
						</ul>
					</div>
					<div class="d-flex">
						<button class="btn btn-outline-dark flex-shrink-0" type="button">
							<i class="bi-cart-fill me-1"></i> 홈서비스 바로구매
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Related items section-->
	<section class="py-5 bg-light">
		<div class="container px-4 px-lg-5 mt-5">
			<h2 class="fw-bolder mb-4">Related products</h2>
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">특옵션</div>
						<!-- Product image-->
						<img class="card-img-top" src="../car_img/kia_k7.png" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">기아 올 뉴 K7 2.4 GDI 리미티드</h5>
								<!-- Product price-->
								1,650만원
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">View
									options</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top" src="../car_img/hyundai_nexo.png"
							alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">현대 넥쏘 프리미엄</h5>
								<!-- Product price-->
								2,790만원
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">View
									options</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top" src="../car_img/hyundai_sonata.png"
							alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">현대 LF 쏘나타 하이브리드 2.0 HEV 모던</h5>
								1,310만원
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">View
									options</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top" src="../car_img/hyundai_granduar.png"
							alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">현대 그랜저 IG 3.3 셀러브리티</h5>
								<!-- Product price-->
								2,450만원
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">View
									options</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2023</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="../resources/static/js/scripts.js"></script>
</body>
</html>
