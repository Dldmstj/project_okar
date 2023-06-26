<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
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

    </head>
    <body>
    <jsp:include page="header.jsp"/>
        
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">내차 사기</h1>
                </div>
            </div>
        </header>
        
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
                        <input type="checkbox" id="경차" value="경차"/><label>경차</label>
                        <input type="checkbox" id="소형차" value="소형차"/><label>소형차</label>
                        <input type="checkbox" id="소형차" value="소형차"/><label>준중형차</label>
                        <input type="checkbox" id="대형차" value="대형차"/><label>대형차</label>
                        <input type="checkbox" id="스포츠카" value="스포츠카"/><label>스포츠카</label>
                        <input type="checkbox" id="SUV" value="SUV"/><label>SUV</label>
                        <input type="checkbox" id="RV" value="RV"/><label>RV</label>
                        <input type="checkbox" id="경승합차" value="경승합차"/><label>경승합차</label>
                        <input type="checkbox" id="승합차" value="승합차"/><label>승합차</label>
                        <input type="checkbox" id="화물차" value="화물차"/><label>화물차</label>
                        <input type="checkbox" id="버스" value="버스"/><label>버스</label>
                        <!-- <a class="list-group-item list-group-item-action list-group-item-light p-3"
                            >경차</a>
                        <a class="list-group-item list-group-item-action list-group-item-light p-3"
                            >a</a>
                        <a class="list-group-item list-group-item-action list-group-item-light p-3"
                            >a</a> -->
                    </div>
                    <button onclick="comapny_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >제조사</button>
                    <div style="display: none;" class="list-group list-group-flush" id="comapny_Car">
                        <input type="checkbox" id="현대" value="현대"/><label>현대</label>
                        <input type="checkbox" id="제네시스" value="제네시스"/><label>제네시스</label>
                        <input type="checkbox" id="기아" value="기아"/><label>기아</label>
                        <input type="checkbox" id="쉐보레" value="쉐보레"/><label>쉐보레</label>
                        <input type="checkbox" id="르노삼성" value="르노삼성"/><label>르노삼성</label>
                        <input type="checkbox" id="쌍용" value="쌍용"/><label>쌍용</label>
                        <input type="checkbox" id="벤츠" value="벤츠"/><label>벤츠</label>
                        <input type="checkbox" id="BMW" value="BMW"/><label>BMW</label>
                        <input type="checkbox" id="아우디" value="아우디"/><label>아우디</label>
                        <input type="checkbox" id="폭스바겐" value="폭스바겐"/><label>폭스바겐</label>
                        <input type="checkbox" id="미니" value="미니"/><label>미니</label>
                        <input type="checkbox" id="볼보" value="볼보"/><label>볼보</label>
                        <input type="checkbox" id="포르쉐" value="포르쉐"/><label>포르쉐</label>
                        <input type="checkbox" id="렉서스" value="렉서스"/><label>렉서스</label>
                        <input type="checkbox" id="도요타" value="도요타"/><label>도요타</label>
                        <input type="checkbox" id="인피니티" value="인피니티"/><label>인피니티</label>
                        <input type="checkbox" id="혼다" value="혼다"/><label>혼다</label>
                        <input type="checkbox" id="포드" value="포드"/><label>포드</label>
                        <input type="checkbox" id="지프" value="지프"/><label>지프</label>
                        <input type="checkbox" id="캐딜락" value="캐딜락"/><label>캐딜락</label>
                        <input type="checkbox" id="마세라티" value="마세라티"/><label>마세라티</label>
                        <input type="checkbox" id="랜드로버" value="랜드로버"/><label>랜드로버</label>
                        <input type="checkbox" id="푸조" value="푸조"/><label>푸조</label>
                        <input type="checkbox" id="페라리" value="페라리"/><label>페라리</label>
                        <input type="checkbox" id="벤틀리" value="벤틀리"/><label>벤틀리</label>
                    </div>
                    <button onclick="year_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >연식</button>
                    <!-- jsp에서 scriptlet으로 반복문 처리 -->
                    <div style="display: none;" class="list-group list-group-flush" id="year_Car">
                        <select id="year_min">
                            <option id="2000" value="2000">2000</option>
                            <option id="2001" value="2001">2001</option>
                            <option id="2002" value="2002">2002</option>
                            <option id="2003" value="2003">2003</option>
                        </select>
                        <span> ~ </span>
                        <select id="year_max">
                            <option id="2000" value="2000">2000</option>
                            <option id="2001" value="2001">2001</option>
                            <option id="2002" value="2002">2002</option>
                            <option id="2003" value="2003">2003</option>
                        </select>
                    </div>        
                    <button onclick="diriving_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >주행거리</button>
                    <!-- jsp에서 scriptlet으로 반복문 처리 -->
                    <div style="display: none;" class="list-group list-group-flush" id="diriving_Car">
                        <select id="driving_min">
                            <option id="10000" value="10000">10,000km</option>
                            <option id="20000" value="20000">20,000km</option>
                            <option id="30000" value="30000">30,000km</option>
                            <option id="40000" value="40000">40,000km</option>
                        </select>
                        <span> ~ </span>
                        <select id="driving_max">
                            <option id="10000" value="10000">10,000km</option>
                            <option id="20000" value="20000">20,000km</option>
                            <option id="30000" value="30000">30,000km</option>
                            <option id="40000" value="40000">40,000km</option>
                        </select>
                    </div>
                    <button onclick="pay_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >가격</button>
                    <!-- jsp에서 scriptlet으로 반복문 처리 -->
                    <div style="display: none;" class="list-group list-group-flush" id="pay_Car">
                        <input type="checkbox" id="100" value="100"/><label>1백</label>
                        <input type="checkbox" id="200" value="200"/><label>2백</label>
                        <input type="checkbox" id="300" value="300"/><label>3백</label>
                        <input type="checkbox" id="400" value="400"/><label>4백</label>
                        <input type="checkbox" id="500" value="500"/><label>5백</label>
                        <input type="checkbox" id="600" value="600"/><label>6백</label>
                        <input type="checkbox" id="700" value="700"/><label>7백</label>
                        <input type="checkbox" id="800" value="800"/><label>8백</label>
                        <input type="checkbox" id="900" value="900"/><label>9백</label>
                        <input type="text" id="max_pay" value="0"/><span>원 ~ </span>
                        <input type="text" id="min_pay" value="0"/><span>만원</span>
                    </div>
                    <button onclick="color_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >색상</button>
                    <div style="display: none;" class="list-group list-group-flush" id="color_Car">
                        <input type="checkbox" id="white" value="white"/><label>흰색</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>진주색</label>
                        <input type="checkbox" id="black" value="black"/><label>검정색</label>
                        <input type="checkbox" id="silver" value="silver"/><label>은색</label>
                    </div>
                    <button onclick="option_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >옵션</button>
                    <div style="display: none;" class="list-group list-group-flush" id="option_Car">
                        <input type="checkbox" id="white" value="white"/><label>모두 포함</label>
                        <input type="checkbox" id="white" value="white"/><label>스티어링 휠 열선</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>선루프</label>
                        <input type="checkbox" id="black" value="black"/><label>하이패스</label>
                        <input type="checkbox" id="silver" value="silver"/><label>후측방 경보시스템</label>
                        <input type="checkbox" id="silver" value="silver"/><label>카메라:후방</label>
                        <input type="checkbox" id="silver" value="silver"/><label>네비게이션</label>
                    </div>
                    <button onclick="loc_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >지역/직영점</button>
                    <div style="display: none;" class="list-group list-group-flush" id="loc_Car">
                        <input type="checkbox" id="white" value="white"/><label>모두 포함</label>
                        <input type="checkbox" id="white" value="white"/><label>홈서비스 메가센터</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>서울</label>
                        <input type="checkbox" id="black" value="black"/><label>경기/인천</label>
                        <input type="checkbox" id="silver" value="silver"/><label>경남</label>
                        <input type="checkbox" id="silver" value="silver"/><label>경북</label>
                        <input type="checkbox" id="silver" value="silver"/><label>전남</label>
                        <input type="checkbox" id="silver" value="silver"/><label>전북</label>
                        <input type="checkbox" id="silver" value="silver"/><label>충남</label>
                        <input type="checkbox" id="silver" value="silver"/><label>충북</label>
                        <input type="checkbox" id="silver" value="silver"/><label>제주</label>
                        <input type="checkbox" id="silver" value="silver"/><label>강원</label>
                    </div>
                    <button onclick="fuel_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >연료</button>
                    <div style="display: none;" class="list-group list-group-flush" id="fuel_Car">
                        <input type="checkbox" id="white" value="white"/><label>모두 포함</label>
                        <input type="checkbox" id="white" value="white"/><label>가솔린</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>디젤</label>
                        <input type="checkbox" id="black" value="black"/><label>LPG</label>
                        <input type="checkbox" id="silver" value="silver"/><label>가솔린+LPG</label>
                        <input type="checkbox" id="silver" value="silver"/><label>가솔린+전기</label>
                        <input type="checkbox" id="silver" value="silver"/><label>디젤+전기</label>
                        <input type="checkbox" id="silver" value="silver"/><label>LPG+전기</label>
                        <input type="checkbox" id="silver" value="silver"/><label>전기</label>
                        <input type="checkbox" id="silver" value="silver"/><label>가솔린+CNG</label>
                        <input type="checkbox" id="silver" value="silver"/><label>LNG</label>
                        <input type="checkbox" id="silver" value="silver"/><label>CNG</label>
                        <input type="checkbox" id="silver" value="silver"/><label>수소전기</label>
                        <input type="checkbox" id="silver" value="silver"/><label>기타</label>
                    </div>
                    <button onclick="trans_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >변속기</button>
                    <div style="display: none;" class="list-group list-group-flush" id="trans_Car">
                        <input type="checkbox" id="white" value="white"/><label>모두 포함</label>
                        <input type="checkbox" id="white" value="white"/><label>오토</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>수동</label>
                        <input type="checkbox" id="black" value="black"/><label>세미오토</label>
                        <input type="checkbox" id="silver" value="silver"/><label>CVT</label>
                        <input type="checkbox" id="silver" value="silver"/><label>기타</label>
                    </div>
                    <button onclick="crush_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >사고유무</button>
                    <div style="display: none;" class="list-group list-group-flush" id="crush_Car">
                        <input type="checkbox" id="white" value="white"/><label>모두 포함</label>
                        <input type="checkbox" id="white" value="white"/><label>무사고</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>단순수리</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>사고</label>
                    </div>
                    <button onclick="seater_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >인승</button>
                    <div style="display: none;" class="list-group list-group-flush" id="seater_Car">
                        <input type="checkbox" id="white" value="white"/><label>모두 포함</label>
                        <input type="checkbox" id="white" value="white"/><label>4인승</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>5인승</label>
                        <input type="checkbox" id="black" value="black"/><label>6인승</label>
                        <input type="checkbox" id="silver" value="silver"/><label>7인승</label>
                        <input type="checkbox" id="silver" value="silver"/><label>9인승</label>
                        <input type="checkbox" id="silver" value="silver"/><label>11인승</label>
                        <input type="checkbox" id="silver" value="silver"/><label>15인승</label>
                    </div>
                    <button onclick="selltype()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >판매구분</button>
                    <div style="display: none;" class="list-group list-group-flush" id="selltype">
                        <input type="radio" name="selltype" id="전체" value="전체"/><label for="전체">전체</label>
                        <input type="radio" name="selltype" id="일반" value="일반"/><label for="일반">일반</label>
                        <input type="radio" name="selltype" id="리스승계" value="리스승계"/><label for="리스승계">리스승계</label>
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
