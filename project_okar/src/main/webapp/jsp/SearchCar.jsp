<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <title>Shop Homepage - Start Bootstrap Template</title>
            <!-- Favicon-->
            <link rel="icon" type="image/x-icon" href="../resources/static/assets/favicon.ico" />
            <!-- Bootstrap icons-->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
            <!-- Core theme CSS (includes Bootstrap)-->
            <link href="../resources/static/css/styles.css" rel="stylesheet" />
            <link href="../resources/static/css/styles_sidebar.css" rel="stylesheet" />
    		<style type="text/css">
	    		input[type=checkbox]{
				  position: relative;
				  outline: 0;
				  display: none;
				  flex: 1;
				}
				
				input[type=checkbox]+label{
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
				  transition: all .3s cubic-bezier(.645,.045,.355,1);
				  padding: 8px;
				  font-size: 14px;
				}
				
				input[type=checkbox]:checked+label{
				  color: #16171d;
				  border-color: #b70f28;
				  background-color: #fff;
				  box-shadow: 0 2px 4px 0 rgba(22,23,29,.04)!important;
				}
    		</style>
        </head>
        <body>
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container px-4 px-lg-5">
                    <a class="navbar-brand" href="#!">OKar</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                            <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                    <li><hr class="dropdown-divider" /></li>
                                    <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                    <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                                </ul>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <button class="btn btn-outline-dark" type="submit">
                                <i class="bi-cart-fill me-1"></i>
                                Cart
                                <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                            </button>
                        </form>
                    </div>
                </div>
            </nav>
            <!-- Header-->
            <header class="bg-dark py-5">
                <div class="container px-4 px-lg-5 my-5">
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
                            <input type="button" class="easySchBtn" value="간편검색" />
                        </div>
                        <button onclick="kind_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >차종</button>
                        <div style="display: none;" class="list-group list-group-flush" id="kind_Car">
                            <input type="checkbox" name="kind" id="경차" value="경차"/><label for="경차">경차</label>
                            <input type="checkbox" name="kind" id="소형차" value="소형차"/><label for="소형차">소형차</label>
                            <input type="checkbox" name="kind" id="준중형차" value="소형차"/><label for="준중형차">준중형차</label>
                            <input type="checkbox" name="kind" id="대형차" value="대형차"/><label for="대형차">대형차</label>
                            <input type="checkbox" name="kind" id="스포츠카" value="스포츠카"/><label for="스포츠카">스포츠카</label>
                            <input type="checkbox" name="kind" id="SUV" value="SUV"/><label for="SUV">SUV</label>
                            <input type="checkbox" name="kind" id="RV" value="RV"/><label for="RV">RV</label>
                            <input type="checkbox" name="kind" id="경승합차" value="경승합차"/><label for="경승합차">경승합차</label>
                            <input type="checkbox" name="kind" id="승합차" value="승합차"/><label for="승합차">승합차</label>
                            <input type="checkbox" name="kind" id="화물차" value="화물차"/><label for="화물차">화물차</label>
                            <input type="checkbox" name="kind" id="버스" value="버스"/><label for="버스">버스</label>
                        </div>
                        <button onclick="comapny_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >제조사</button>
                        <div style="display: none;" class="list-group list-group-flush" id="comapny_Car">
                            <input type="checkbox" name="company" id="현대" value="현대"/><label for="현대">현대</label>
                            <input type="checkbox" name="company" id="제네시스" value="제네시스"/><label for="제네시스">제네시스</label>
                            <input type="checkbox" name="company" id="기아" value="기아"/><label for="기아">기아</label>
                            <input type="checkbox" name="company" id="쉐보레" value="쉐보레"/><label for="쉐보레">쉐보레</label>
                            <input type="checkbox" name="company" id="르노삼성" value="르노삼성"/><label for="르노삼성">르노삼성</label>
                            <input type="checkbox" name="company" id="쌍용" value="쌍용"/><label for="쌍용">쌍용</label>
                            <input type="checkbox" name="company" id="벤츠" value="벤츠"/><label for="벤츠">벤츠</label>
                            <input type="checkbox" name="company" id="BMW" value="BMW"/><label for="BMW">BMW</label>
                            <input type="checkbox" name="company" id="아우디" value="아우디"/><label for="아우디">아우디</label>
                            <input type="checkbox" name="company" id="폭스바겐" value="폭스바겐"/><label for="폭스바겐">폭스바겐</label>
                            <input type="checkbox" name="company" id="미니" value="미니"/><label for="미니">미니</label>
                            <input type="checkbox" name="company" id="볼보" value="볼보"/><label for="볼보">볼보</label>
                            <input type="checkbox" name="company" id="포르쉐" value="포르쉐"/><label for="포르쉐">포르쉐</label>
                            <input type="checkbox" name="company" id="렉서스" value="렉서스"/><label for="렉서스">렉서스</label>
                            <input type="checkbox" name="company" id="도요타" value="도요타"/><label for="도요타">도요타</label>
                            <input type="checkbox" name="company" id="인피니티" value="인피니티"/><label for="인피니티">인피니티</label>
                            <input type="checkbox" name="company" id="혼다" value="혼다"/><label for="혼다">혼다</label>
                            <input type="checkbox" name="company" id="포드" value="포드"/><label for="포드">포드</label>
                            <input type="checkbox" name="company" id="지프" value="지프"/><label for="지프">지프</label>
                            <input type="checkbox" name="company" id="캐딜락" value="캐딜락"/><label for="캐딜락">캐딜락</label>
                            <input type="checkbox" name="company" id="마세라티" value="마세라티"/><label for="마세라티">마세라티</label>
                            <input type="checkbox" name="company" id="랜드로버" value="랜드로버"/><label for="랜드로버">랜드로버</label>
                            <input type="checkbox" name="company" id="푸조" value="푸조"/><label for="푸조">푸조</label>
                            <input type="checkbox" name="company" id="페라리" value="페라리"/><label for="페라리">페라리</label>
                            <input type="checkbox" name="company" id="벤틀리" value="벤틀리"/><label for="벤틀리">벤틀리</label>
                        </div>
                        <button onclick="year_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >연식</button>
                        <div style="display: none;" class="list-group list-group-flush" id="year_Car">
                            <select name="year_min" id="year_min">
                        <%
                        for(int i=2000; i<=2023; i++){
                        %>
                                <option id="<%=i %>" value="<%=i %>"><%=i %></option>
                        <%}%>
                            </select>
                            <span> ~ </span>
                            <select name="year_max" id="year_max">
                        <%
                        for(int i=2000; i<=2023; i++){
                        %>
                                <option id="<%=i %>" value="<%=i %>"><%=i %></option>
                        <%}%>
                            </select>
                        </div>        
                        <button onclick="diriving_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >주행거리</button>
                        <div style="display: none;" class="list-group list-group-flush" id="diriving_Car">
                            <select name="driving_min" id="driving_min">
                        <%
                        for(int i=10000; i<=100000; i+=10000){
                        %>
                                <option id="<%=i %>" value="<%=i %>"><%=i %>km</option>
                        <%}%>
                            </select>
                            <span> ~ </span>
                            <select name="driving_max" id="driving_min">
                        <%
                        for(int i=10000; i<=100000; i+=10000){
                        %>
                                <option id="<%=i %>" value="<%=i %>"><%=i %>km</option>
                        <%}%>
                            </select>
                        </div>
                        <button onclick="pay_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >가격</button>
                        <div style="display: none;" class="list-group list-group-flush" id="pay_Car">
                        <%
                        for(int i=100; i<=900; i+=100){
                        %>
                            <input type="checkbox" name="pay" id="<%=i%>백" value="<%=i%>"/><label for="<%=i%>백"><%=i/100 %>백</label>
                        <%}
                        for(int i=1000; i<=9000; i+=1000){
                        %>
                        	<input type="checkbox" name="pay" id="<%=i%>천" value="<%=i%>"/><label for="<%=i%>천"><%=i/1000 %>천</label>
                        <%} %>
                            <input type="text" name=min_pay id="min_pay" value="0"/><span>원 ~ </span>
                            <input type="text" name=max_pay id="max_pay" value="0"/><span>만원</span>
                        </div>
                        <button onclick="color_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >색상</button>
                        <div style="display: none;" class="list-group list-group-flush" id="color_Car">
                            <input type="checkbox" name="color_Car" id="c모두포함" value="모두포함"/><label for="c모두포함">모두포함</label>
                            <input type="checkbox" name="color_Car" id="흰색" value="흰색"/><label for="흰색">흰색</label>
                            <input type="checkbox" name="color_Car" id="진주색" value="진주색"/><label for="진주색">진주색</label>
                            <input type="checkbox" name="color_Car" id="검정색" value="검정색"/><label for="검정색">검정색</label>
                            <input type="checkbox" name="color_Car" id="은색" value="은색"/><label for="은색">은색</label>
                        </div>
                        <button onclick="option_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >옵션</button>
                        <div style="display: none;" class="list-group list-group-flush" id="option_Car">
                            <input type="checkbox" name="option" id="o모두포함" value="모두포함"/><label for="o모두포함">모두포함</label>
                            <input type="checkbox" name="option" id="스티어링" value="스티어링"/><label for="스티어링">스티어링 휠 열선</label>
                            <input type="checkbox" name="option" id="선루프" value="선루프"/><label for="선루프">선루프</label>
                            <input type="checkbox" name="option" id="하이패스" value="하이패스"/><label for="하이패스">하이패스</label>
                            <input type="checkbox" name="option" id="후측방" value="후측방"/><label for="후측방">후측방 경보시스템</label>
                            <input type="checkbox" name="option" id="후방카메라" value="후방카메라"/><label for="후방카메라">카메라:후방</label>
                            <input type="checkbox" name="option" id="네비게이션" value="네비게이션"/><label for="네비게이션">네비게이션</label>
                        </div>
                        <button onclick="loc_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >지역/직영점</button>
                        <div style="display: none;" class="list-group list-group-flush" id="loc_Car">
                            <input type="checkbox" name ="loc" id="모두포함" value="white"/><label for="모두포함">모두포함</label>
                            <input type="checkbox" name ="loc" id="홈서비스" value="white"/><label for="홈서비스">홈서비스 메가센터</label>
                            <input type="checkbox" name ="loc" id="서울" value="서울"/><label for="서울">서울</label>
                            <input type="checkbox" name ="loc" id="경인" value="경인"/><label for="경인">경기/인천</label>
                            <input type="checkbox" name ="loc" id="경남" value="경남"/><label for="경남">경남</label>
                            <input type="checkbox" name ="loc" id="경북" value="경북"/><label for="경북">경북</label>
                            <input type="checkbox" name ="loc" id="전남" value="전남"/><label for="전남">전남</label>
                            <input type="checkbox" name ="loc" id="전북" value="전북"/><label for="전북">전북</label>
                            <input type="checkbox" name ="loc" id="충남" value="충남"/><label for="충남">충남</label>
                            <input type="checkbox" name ="loc" id="충북" value="충북"/><label for="충북">충북</label>
                            <input type="checkbox" name ="loc" id="제주" value="제주"/><label for="제주">제주</label>
                            <input type="checkbox" name ="loc" id="강원" value="강원"/><label for="강원">강원</label>
                        </div>
                        <button onclick="fuel_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >연료</button>
                        <div style="display: none;" class="list-group list-group-flush" id="fuel_Car">
                            <input type="checkbox" name="fuel" id="f모두포함" value="모두포함"/><label for="f모두포함">모두 포함</label>
                            <input type="checkbox" name="fuel" id="가솔린" value="가솔린"/><label for="가솔린">가솔린</label>
                            <input type="checkbox" name="fuel" id="디젤" value="디젤"/><label for="디젤">디젤</label>
                            <input type="checkbox" name="fuel" id="LPG" value="LPG"/><label for="LPG">LPG</label>
                            <input type="checkbox" name="fuel" id="가L" value="silver"/><label for="가L">가솔린+LPG</label>
                            <input type="checkbox" name="fuel" id="가전" value="silver"/><label for="가전">가솔린+전기</label>
                            <input type="checkbox" name="fuel" id="디전" value="silver"/><label for="디전">디젤+전기</label>
                            <input type="checkbox" name="fuel" id="L전" value="silver"/><label for="L전">LPG+전기</label>
                            <input type="checkbox" name="fuel" id="전기" value="silver"/><label for="전기">전기</label>
                            <input type="checkbox" name="fuel" id="가C" value="silver"/><label for="가C">가솔린+CNG</label>
                            <input type="checkbox" name="fuel" id="LNG" value="silver"/><label for="LNG">LNG</label>
                            <input type="checkbox" name="fuel" id="CNG" value="CNG"/><label for="CNG">CNG</label>
                            <input type="checkbox" name="fuel" id="수소전기" value="수소전기"/><label for="수소전기">수소전기</label>
                            <input type="checkbox" name="fuel" id="f기타" value="기타"/><label for="f기타">기타</label>
                        </div>
                        <button onclick="trans_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >변속기</button>
                        <div style="display: none;" class="list-group list-group-flush" id="trans_Car">
                            <input type="checkbox" name="trans" id="모두포함" value="모두포함"/><label for="모두포함">모두포함</label>
                            <input type="checkbox" name="trans" id="오토" value="오토"/><label for="오토">오토</label>
                            <input type="checkbox" name="trans" id="수동" value="수동"/><label for="수동">수동</label>
                            <input type="checkbox" name="trans" id="세미오토" value="세미오토"/><label for="세미오토">세미오토</label>
                            <input type="checkbox" name="trans" id="CVT" value="CVT"/><label for="CVT">CVT</label>
                            <input type="checkbox" name="trans" id="t기타" value="기타"/><label for="t기타">기타</label>
                        </div>
                        <button onclick="crush_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >사고유무</button>
                        <div style="display: none;" class="list-group list-group-flush" id="crush_Car">
                            <input type="checkbox" name="crush" id="모두포함" value="모두포함"/><label for="모두포함">모두포함</label>
                            <input type="checkbox" name="crush" id="무사고" value="무사고"/><label for="무사고">무사고</label>
                            <input type="checkbox" name="crush" id="단순수리" value="단순수리"/><label for="단순수리">단순수리</label>
                            <input type="checkbox" name="crush" id="사고" value="사고"/><label for="사고">사고</label>
                        </div>
                        <button onclick="seater_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >인승</button>
                        <div style="display: none;" class="list-group list-group-flush" id="seater_Car">
                            <input type="checkbox" id="모두포함" name="seater" value="all"/><label for="모두포함">모두포함</label>
                            <input type="checkbox" id="4인승" name="seater" value="4"/><label for="4인승">4인승</label>
                            <input type="checkbox" id="5인승" name="seater" value="5"/><label for="5인승">5인승</label>
                            <input type="checkbox" id="6인승" name="seater" value="6"/><label for="6인승">6인승</label>
                            <input type="checkbox" id="7인승" name="seater" value="7"/><label for="7인승">7인승</label>
                            <input type="checkbox" id="9인승" name="seater" value="9"/><label for="9인승">9인승</label>
                            <input type="checkbox" id="11인승" name="seater" value="11"/><label for="11인승">11인승</label>
                            <input type="checkbox" id="15인승" name="seater" value="15"/><label for="15인승">15인승</label>
                        </div>
                        <button onclick="selltype()" class="list-group-item list-group-item-action list-group-item-light p-3"
                        >판매구분</button>
                        <div style="display: none;" class="list-group list-group-flush" id="selltype">
                            <input type="radio" name="selltype" class="selltype" id="전체" value="전체"/><label for="전체">전체</label>
                            <input type="radio" name="selltype" class="selltype" id="일반" value="일반"/><label for="일반">일반</label>
                            <input type="radio" name="selltype" class="selltype" id="리스" value="리스승계"/><label for="리스">리스</label>
                        </div>
                    </div>
                    <!-- Page content wrapper-->
                    <div id="page-content-wrapper">
                        <!-- Top navigation-->
                        <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                            <div class="container-fluid">
                                <form class="searchForm">
                                    <input type="text" class="searchBox" placeholder="원하는 차량을 검색하세요." />
                                    <input type="button" class="searchBtn" value="검색" />
                                </form>
                            </div>
                        </nav>
                        <!-- Page content-->
                        <div class="container-fluid">
                            <!-- Section-->
                            <section class="py-5">
                                <div class="container px-4 px-lg-5 mt-5">
                                    <div
                                        class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                                        <div class="col mb-5">
                                            <div class="card h-100" onclick="location.href='detailCar.jsp';">
                                                <!-- Product image-->
                                                <img class="card-img-top"
                                                    src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                                                <!-- Product details-->
                                                <div class="card-body p-4">
                                                    <div class="text-center">
                                                        <!-- Product name-->
                                                        <h5 class="fw-bolder">Fancy Product</h5>
                                                        <!-- Product price-->
                                                        $40.00 - $80.00
                                                    </div>
                                                </div>
                                                <!-- Product actions-->
                                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                            href="#">View options</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col mb-5">
                                            <div class="card h-100">
                                                <!-- Sale badge-->
                                                <div class="badge bg-dark text-white position-absolute"
                                                    style="top: 0.5rem; right: 0.5rem">Sale</div>
                                                <!-- Product image-->
                                                <img class="card-img-top"
                                                    src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                                                <!-- Product details-->
                                                <div class="card-body p-4">
                                                    <div class="text-center">
                                                        <!-- Product name-->
                                                        <h5 class="fw-bolder">Special Item</h5>
                                                        <!-- Product reviews-->
                                                        <div class="d-flex justify-content-center small text-warning mb-2">
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                        </div>
                                                        <!-- Product price-->
                                                        <span class="text-muted text-decoration-line-through">$20.00</span>
                                                        $18.00
                                                    </div>
                                                </div>
                                                <!-- Product actions-->
                                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                            href="#">Add to cart</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col mb-5">
                                            <div class="card h-100">
                                                <!-- Sale badge-->
                                                <div class="badge bg-dark text-white position-absolute"
                                                    style="top: 0.5rem; right: 0.5rem">Sale</div>
                                                <!-- Product image-->
                                                <img class="card-img-top"
                                                    src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                                                <!-- Product details-->
                                                <div class="card-body p-4">
                                                    <div class="text-center">
                                                        <!-- Product name-->
                                                        <h5 class="fw-bolder">Sale Item</h5>
                                                        <!-- Product price-->
                                                        <span class="text-muted text-decoration-line-through">$50.00</span>
                                                        $25.00
                                                    </div>
                                                </div>
                                                <!-- Product actions-->
                                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                            href="#">Add to cart</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col mb-5">
                                            <div class="card h-100">
                                                <!-- Product image-->
                                                <img class="card-img-top"
                                                    src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                                                <!-- Product details-->
                                                <div class="card-body p-4">
                                                    <div class="text-center">
                                                        <!-- Product name-->
                                                        <h5 class="fw-bolder">Popular Item</h5>
                                                        <!-- Product reviews-->
                                                        <div class="d-flex justify-content-center small text-warning mb-2">
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                        </div>
                                                        <!-- Product price-->
                                                        $40.00
                                                    </div>
                                                </div>
                                                <!-- Product actions-->
                                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                            href="#">Add to cart</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col mb-5">
                                            <div class="card h-100">
                                                <!-- Sale badge-->
                                                <div class="badge bg-dark text-white position-absolute"
                                                    style="top: 0.5rem; right: 0.5rem">Sale</div>
                                                <!-- Product image-->
                                                <img class="card-img-top"
                                                    src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                                                <!-- Product details-->
                                                <div class="card-body p-4">
                                                    <div class="text-center">
                                                        <!-- Product name-->
                                                        <h5 class="fw-bolder">Sale Item</h5>
                                                        <!-- Product price-->
                                                        <span class="text-muted text-decoration-line-through">$50.00</span>
                                                        $25.00
                                                    </div>
                                                </div>
                                                <!-- Product actions-->
                                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                            href="#">Add to cart</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col mb-5">
                                            <div class="card h-100">
                                                <!-- Product image-->
                                                <img class="card-img-top"
                                                    src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                                                <!-- Product details-->
                                                <div class="card-body p-4">
                                                    <div class="text-center">
                                                        <!-- Product name-->
                                                        <h5 class="fw-bolder">Fancy Product</h5>
                                                        <!-- Product price-->
                                                        $120.00 - $280.00
                                                    </div>
                                                </div>
                                                <!-- Product actions-->
                                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                            href="#">View options</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col mb-5">
                                            <div class="card h-100">
                                                <!-- Sale badge-->
                                                <div class="badge bg-dark text-white position-absolute"
                                                    style="top: 0.5rem; right: 0.5rem">Sale</div>
                                                <!-- Product image-->
                                                <img class="card-img-top"
                                                    src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                                                <!-- Product details-->
                                                <div class="card-body p-4">
                                                    <div class="text-center">
                                                        <!-- Product name-->
                                                        <h5 class="fw-bolder">Special Item</h5>
                                                        <!-- Product reviews-->
                                                        <div class="d-flex justify-content-center small text-warning mb-2">
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                        </div>
                                                        <!-- Product price-->
                                                        <span class="text-muted text-decoration-line-through">$20.00</span>
                                                        $18.00
                                                    </div>
                                                </div>
                                                <!-- Product actions-->
                                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                            href="#">Add to cart</a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col mb-5">
                                            <div class="card h-100">
                                                <!-- Product image-->
                                                <img class="card-img-top"
                                                    src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                                                <!-- Product details-->
                                                <div class="card-body p-4">
                                                    <div class="text-center">
                                                        <!-- Product name-->
                                                        <h5 class="fw-bolder">Popular Item</h5>
                                                        <!-- Product reviews-->
                                                        <div class="d-flex justify-content-center small text-warning mb-2">
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                            <div class="bi-star-fill"></div>
                                                        </div>
                                                        <!-- Product price-->
                                                        $40.00
                                                    </div>
                                                </div>
                                                <!-- Product actions-->
                                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                            href="#">Add to cart</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
                <!-- Bootstrap core JS-->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                <!-- Core theme JS-->
                <script src="../resources/static/js/scripts_sidebar.js"></script>
            </body>
    </html>
    