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
                    <h1 class="display-4 fw-bolder">���� ���</h1>
                </div>
            </div>
        </header>
        
        <body>
            <div class="d-flex" id="wrapper">
                <!-- Sidebar-->
                <div class="border-end bg-white" id="sidebar-wrapper">
                    <div class="container-fluid">
                        <input type="button" class="easySchBtn" value="����˻�" />
                    </div>
                    <button onclick="kind_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >����</button>
                    <div style="display: none;" class="list-group list-group-flush" id="kind_Car">
                        <input type="checkbox" id="����" value="����"/><label>����</label>
                        <input type="checkbox" id="������" value="������"/><label>������</label>
                        <input type="checkbox" id="������" value="������"/><label>��������</label>
                        <input type="checkbox" id="������" value="������"/><label>������</label>
                        <input type="checkbox" id="������ī" value="������ī"/><label>������ī</label>
                        <input type="checkbox" id="SUV" value="SUV"/><label>SUV</label>
                        <input type="checkbox" id="RV" value="RV"/><label>RV</label>
                        <input type="checkbox" id="�������" value="�������"/><label>�������</label>
                        <input type="checkbox" id="������" value="������"/><label>������</label>
                        <input type="checkbox" id="ȭ����" value="ȭ����"/><label>ȭ����</label>
                        <input type="checkbox" id="����" value="����"/><label>����</label>
                        <!-- <a class="list-group-item list-group-item-action list-group-item-light p-3"
                            >����</a>
                        <a class="list-group-item list-group-item-action list-group-item-light p-3"
                            >a</a>
                        <a class="list-group-item list-group-item-action list-group-item-light p-3"
                            >a</a> -->
                    </div>
                    <button onclick="comapny_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >������</button>
                    <div style="display: none;" class="list-group list-group-flush" id="comapny_Car">
                        <input type="checkbox" id="����" value="����"/><label>����</label>
                        <input type="checkbox" id="���׽ý�" value="���׽ý�"/><label>���׽ý�</label>
                        <input type="checkbox" id="���" value="���"/><label>���</label>
                        <input type="checkbox" id="������" value="������"/><label>������</label>
                        <input type="checkbox" id="����Ｚ" value="����Ｚ"/><label>����Ｚ</label>
                        <input type="checkbox" id="�ֿ�" value="�ֿ�"/><label>�ֿ�</label>
                        <input type="checkbox" id="����" value="����"/><label>����</label>
                        <input type="checkbox" id="BMW" value="BMW"/><label>BMW</label>
                        <input type="checkbox" id="�ƿ��" value="�ƿ��"/><label>�ƿ��</label>
                        <input type="checkbox" id="�����ٰ�" value="�����ٰ�"/><label>�����ٰ�</label>
                        <input type="checkbox" id="�̴�" value="�̴�"/><label>�̴�</label>
                        <input type="checkbox" id="����" value="����"/><label>����</label>
                        <input type="checkbox" id="������" value="������"/><label>������</label>
                        <input type="checkbox" id="������" value="������"/><label>������</label>
                        <input type="checkbox" id="����Ÿ" value="����Ÿ"/><label>����Ÿ</label>
                        <input type="checkbox" id="���Ǵ�Ƽ" value="���Ǵ�Ƽ"/><label>���Ǵ�Ƽ</label>
                        <input type="checkbox" id="ȥ��" value="ȥ��"/><label>ȥ��</label>
                        <input type="checkbox" id="����" value="����"/><label>����</label>
                        <input type="checkbox" id="����" value="����"/><label>����</label>
                        <input type="checkbox" id="ĳ����" value="ĳ����"/><label>ĳ����</label>
                        <input type="checkbox" id="������Ƽ" value="������Ƽ"/><label>������Ƽ</label>
                        <input type="checkbox" id="����ι�" value="����ι�"/><label>����ι�</label>
                        <input type="checkbox" id="Ǫ��" value="Ǫ��"/><label>Ǫ��</label>
                        <input type="checkbox" id="���" value="���"/><label>���</label>
                        <input type="checkbox" id="��Ʋ��" value="��Ʋ��"/><label>��Ʋ��</label>
                    </div>
                    <button onclick="year_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >����</button>
                    <!-- jsp���� scriptlet���� �ݺ��� ó�� -->
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
                    >����Ÿ�</button>
                    <!-- jsp���� scriptlet���� �ݺ��� ó�� -->
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
                    >����</button>
                    <!-- jsp���� scriptlet���� �ݺ��� ó�� -->
                    <div style="display: none;" class="list-group list-group-flush" id="pay_Car">
                        <input type="checkbox" id="100" value="100"/><label>1��</label>
                        <input type="checkbox" id="200" value="200"/><label>2��</label>
                        <input type="checkbox" id="300" value="300"/><label>3��</label>
                        <input type="checkbox" id="400" value="400"/><label>4��</label>
                        <input type="checkbox" id="500" value="500"/><label>5��</label>
                        <input type="checkbox" id="600" value="600"/><label>6��</label>
                        <input type="checkbox" id="700" value="700"/><label>7��</label>
                        <input type="checkbox" id="800" value="800"/><label>8��</label>
                        <input type="checkbox" id="900" value="900"/><label>9��</label>
                        <input type="text" id="max_pay" value="0"/><span>�� ~ </span>
                        <input type="text" id="min_pay" value="0"/><span>����</span>
                    </div>
                    <button onclick="color_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >����</button>
                    <div style="display: none;" class="list-group list-group-flush" id="color_Car">
                        <input type="checkbox" id="white" value="white"/><label>���</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>���ֻ�</label>
                        <input type="checkbox" id="black" value="black"/><label>������</label>
                        <input type="checkbox" id="silver" value="silver"/><label>����</label>
                    </div>
                    <button onclick="option_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >�ɼ�</button>
                    <div style="display: none;" class="list-group list-group-flush" id="option_Car">
                        <input type="checkbox" id="white" value="white"/><label>��� ����</label>
                        <input type="checkbox" id="white" value="white"/><label>��Ƽ� �� ����</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>������</label>
                        <input type="checkbox" id="black" value="black"/><label>�����н�</label>
                        <input type="checkbox" id="silver" value="silver"/><label>������ �溸�ý���</label>
                        <input type="checkbox" id="silver" value="silver"/><label>ī�޶�:�Ĺ�</label>
                        <input type="checkbox" id="silver" value="silver"/><label>�׺���̼�</label>
                    </div>
                    <button onclick="loc_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >����/������</button>
                    <div style="display: none;" class="list-group list-group-flush" id="loc_Car">
                        <input type="checkbox" id="white" value="white"/><label>��� ����</label>
                        <input type="checkbox" id="white" value="white"/><label>Ȩ���� �ް�����</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>����</label>
                        <input type="checkbox" id="black" value="black"/><label>���/��õ</label>
                        <input type="checkbox" id="silver" value="silver"/><label>�泲</label>
                        <input type="checkbox" id="silver" value="silver"/><label>���</label>
                        <input type="checkbox" id="silver" value="silver"/><label>����</label>
                        <input type="checkbox" id="silver" value="silver"/><label>����</label>
                        <input type="checkbox" id="silver" value="silver"/><label>�泲</label>
                        <input type="checkbox" id="silver" value="silver"/><label>���</label>
                        <input type="checkbox" id="silver" value="silver"/><label>����</label>
                        <input type="checkbox" id="silver" value="silver"/><label>����</label>
                    </div>
                    <button onclick="fuel_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >����</button>
                    <div style="display: none;" class="list-group list-group-flush" id="fuel_Car">
                        <input type="checkbox" id="white" value="white"/><label>��� ����</label>
                        <input type="checkbox" id="white" value="white"/><label>���ָ�</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>����</label>
                        <input type="checkbox" id="black" value="black"/><label>LPG</label>
                        <input type="checkbox" id="silver" value="silver"/><label>���ָ�+LPG</label>
                        <input type="checkbox" id="silver" value="silver"/><label>���ָ�+����</label>
                        <input type="checkbox" id="silver" value="silver"/><label>����+����</label>
                        <input type="checkbox" id="silver" value="silver"/><label>LPG+����</label>
                        <input type="checkbox" id="silver" value="silver"/><label>����</label>
                        <input type="checkbox" id="silver" value="silver"/><label>���ָ�+CNG</label>
                        <input type="checkbox" id="silver" value="silver"/><label>LNG</label>
                        <input type="checkbox" id="silver" value="silver"/><label>CNG</label>
                        <input type="checkbox" id="silver" value="silver"/><label>��������</label>
                        <input type="checkbox" id="silver" value="silver"/><label>��Ÿ</label>
                    </div>
                    <button onclick="trans_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >���ӱ�</button>
                    <div style="display: none;" class="list-group list-group-flush" id="trans_Car">
                        <input type="checkbox" id="white" value="white"/><label>��� ����</label>
                        <input type="checkbox" id="white" value="white"/><label>����</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>����</label>
                        <input type="checkbox" id="black" value="black"/><label>���̿���</label>
                        <input type="checkbox" id="silver" value="silver"/><label>CVT</label>
                        <input type="checkbox" id="silver" value="silver"/><label>��Ÿ</label>
                    </div>
                    <button onclick="crush_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >�������</button>
                    <div style="display: none;" class="list-group list-group-flush" id="crush_Car">
                        <input type="checkbox" id="white" value="white"/><label>��� ����</label>
                        <input type="checkbox" id="white" value="white"/><label>�����</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>�ܼ�����</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>���</label>
                    </div>
                    <button onclick="seater_Car()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >�ν�</button>
                    <div style="display: none;" class="list-group list-group-flush" id="seater_Car">
                        <input type="checkbox" id="white" value="white"/><label>��� ����</label>
                        <input type="checkbox" id="white" value="white"/><label>4�ν�</label>
                        <input type="checkbox" id="pearl" value="pearl"/><label>5�ν�</label>
                        <input type="checkbox" id="black" value="black"/><label>6�ν�</label>
                        <input type="checkbox" id="silver" value="silver"/><label>7�ν�</label>
                        <input type="checkbox" id="silver" value="silver"/><label>9�ν�</label>
                        <input type="checkbox" id="silver" value="silver"/><label>11�ν�</label>
                        <input type="checkbox" id="silver" value="silver"/><label>15�ν�</label>
                    </div>
                    <button onclick="selltype()" class="list-group-item list-group-item-action list-group-item-light p-3"
                    >�Ǹű���</button>
                    <div style="display: none;" class="list-group list-group-flush" id="selltype">
                        <input type="radio" name="selltype" id="��ü" value="��ü"/><label for="��ü">��ü</label>
                        <input type="radio" name="selltype" id="�Ϲ�" value="�Ϲ�"/><label for="�Ϲ�">�Ϲ�</label>
                        <input type="radio" name="selltype" id="�����°�" value="�����°�"/><label for="�����°�">�����°�</label>
                    </div>
                </div>
                <!-- Page content wrapper-->
                <div id="page-content-wrapper">
                    <!-- Top navigation-->
                    <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                        <div class="container-fluid">
                            <form class="searchForm">
                                <input type="text" class="searchBox" placeholder="���ϴ� ������ �˻��ϼ���." />
                                <input type="button" class="searchBtn" value="�˻�" />
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
