<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Item - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../resources/static/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/static/css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- <iframe src="header.html" style="width: 100%; height: 100%; overflow: hidden;"></iframe> -->
        <jsp:include page="header.jsp"/>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <h1 class="display-5 fw-bolder">차량 이름</h1>
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="https://dummyimage.com/600x700/dee2e6/6c757d.jpg" alt="..." /></div>
                </div>
            </div>
        </section>
        <div>
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6">
                        <h1 class="display-5 fw-bolder">가격</h1>
                        <ul class="carOptionLists">
                            <li class="fs-5 mb-5">
                                <span>연식</span>
                            </li>
                            <li class="fs-5 mb-5">
                                <span>주행거리</span>
                            </li>
                            <li class="fs-5 mb-5">
                                <span>사고 건수</span>
                            </li>
                            <li class="fs-5 mb-5">
                                <span>사고 여부</span>
                            </li>
                        </ul>
                        <p class="lead">차량 예상 가격</p>
                        <input type="text" class="price-inner" value="0"/>원
                        <input type="text" class="price_2-inner" value="0"/>만원
                        <p class="lead">할부기간</p>
                        <div class="monthlyRadio">
                            <input type="radio" name="radioBtn" id="12개월" value="12개월"/><label for="12개월" class="radio-inner">12개월</label>
                            <input type="radio" name="radioBtn" id="24개월" value="24개월"/><label for="24개월" class="radio-inner">24개월</label>
                            <input type="radio" name="radioBtn" id="36개월" value="36개월"/><label for="36개월" class="radio-inner">36개월</label>
                            <input type="radio" name="radioBtn" id="48개월" value="48개월"/><label for="48개월" class="radio-inner">48개월</label>
                            <input type="radio" name="radioBtn" id="60개월" value="60개월"/><label for="60개월" class="radio-inner">60개월</label>
                            <input type="radio" name="radioBtn" id="72개월" value="72개월"/><label for="72개월" class="radio-inner">72개월</label>
                        </div>
                        
                    </div>
                    <div class="col-md-6" id="tot-price">
                        <h1 class="display-5 fw-bolder">차량명</h1>
                        
                        <p class="lead">총 구매 예상 비용</p>
                        <div class="el-collapse-item__content">
                            <ul class="costDetailLists">
                                <li class="tot-li"><span>차량가</span><span>0원</span></li>
                                <li class="tot-li"><span>이전등록비</span><span>0원</span></li>
                                <li class="tot-li"><span>관리비용</span><span>0원</span></li>
                                <li class="tot-li"><span>등록신청대행수수료</span><span>0원</span></li>
                                <li class="tot-li"><span>OKar Warrantly</span><span>0원</span></li>
                                <li class="tot-li"><span>배송비</span><span>배송 지역에 따라 달라집니다.</span></li>
                            </ul>
                        </div>
                        <div class="d-flex">
                            <button class="btn btn-outline-dark flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                홈서비스 바로구매
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
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">css
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Fancy Product</h5>
                                    <!-- Product price-->
                                    $40.00 - $80.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
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
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
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
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
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
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/static/js/scripts.js"></script>
    </body>
</html>
