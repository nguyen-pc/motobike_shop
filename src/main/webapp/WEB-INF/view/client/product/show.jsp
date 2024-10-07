
<!DOCTYPE html>
<html>
  <head>
    <title>Ministore</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" type="text/css" href="/client/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/client/css/style.css">
    <link rel="stylesheet" type="text/css" href="/client/css/style_2.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500&family=Lato:wght@300;400;700&display=swap" rel="stylesheet">
    <!-- script
    ================================================== -->
    <script src="/client/js/modernizr.js"></script>
  </head>

  <body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-root-margin="0px 0px -40%" data-bs-smooth-scroll="true" tabindex="0">
    <!-- header -->
    <jsp:include page="../layout/header.jsp" />
       <!-- Single Product Start -->
       <div class="">
        <div class="container py-5">
            <div class="row g-4 mb-5">
                <div>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Danh Sách Sản Phẩm
                            </li>
                        </ol>
                    </nav>
                </div>

                <div class="row g-4 fruite">
                    <div class="col-12 col-md-4">
                        <div class="row g-4">
                            <div class="col-12" id="factoryFilter">
                                <div class="mb-2"><b>Hãng sản xuất</b></div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="factory-1"
                                        value="APPLE">
                                    <label class="form-check-label" for="factory-1">Apple</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="factory-2"
                                        value="ASUS">
                                    <label class="form-check-label" for="factory-2">Asus</label>
                                </div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="factory-3"
                                        value="LENOVO">
                                    <label class="form-check-label" for="factory-3">Lenovo</label>
                                </div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="factory-4"
                                        value="DELL">
                                    <label class="form-check-label" for="factory-4">Dell</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="factory-5"
                                        value="LG">
                                    <label class="form-check-label" for="factory-5">LG</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="factory-6"
                                        value="ACER">
                                    <label class="form-check-label" for="factory-6">Acer</label>
                                </div>

                            </div>
                            <div class="col-12" id="targetFilter">
                                <div class="mb-2"><b>Mục đích sử dụng</b></div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="target-1"
                                        value="GAMING">
                                    <label class="form-check-label" for="target-1">Gaming</label>
                                </div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="target-2"
                                        value="SINHVIEN-VANPHONG">
                                    <label class="form-check-label" for="target-2">Sinh viên - văn
                                        phòng</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="target-3"
                                        value="THIET-KE-DO-HOA">
                                    <label class="form-check-label" for="target-3">Thiết kế đồ
                                        họa</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="target-4"
                                        value="MONG-NHE">
                                    <label class="form-check-label" for="target-4">Mỏng nhẹ</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="target-5"
                                        value="DOANH-NHAN">
                                    <label class="form-check-label" for="target-5">Doanh nhân</label>
                                </div>


                            </div>
                            <div class="col-12" id="priceFilter">
                                <div class="mb-2"><b>Mức giá</b></div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="price-2"
                                        value="duoi-10-trieu">
                                    <label class="form-check-label" for="price-2">Dưới 10 triệu</label>
                                </div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="price-3"
                                        value="10-15-trieu">
                                    <label class="form-check-label" for="price-3">Từ 10 - 15
                                        triệu</label>
                                </div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="price-4"
                                        value="15-20-trieu">
                                    <label class="form-check-label" for="price-4">Từ 15 - 20
                                        triệu</label>
                                </div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="price-5"
                                        value="tren-20-trieu">
                                    <label class="form-check-label" for="price-5">Trên 20 triệu</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mb-2"><b>Sắp xếp</b></div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="sort-1"
                                        value="gia-tang-dan" name="radio-sort">
                                    <label class="form-check-label" for="sort-1">Giá tăng dần</label>
                                </div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="sort-2"
                                        value="gia-giam-dan" name="radio-sort">
                                    <label class="form-check-label" for="sort-2">Giá giảm dần</label>
                                </div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="sort-3" checked
                                        value="gia-nothing" name="radio-sort">
                                    <label class="form-check-label" for="sort-3">Không sắp xếp</label>
                                </div>

                            </div>
                            <div class="col-12">
                                <button
                                    class="btn border-secondary rounded-pill px-4 py-3 text-primary text-uppercase mb-4"
                                    id="btnFilter">
                                    Lọc Sản Phẩm
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-8 text-center">
                        <div class="row g-4">
                            <c:if test="${totalPages ==  0}">
                                <div>Không tìm thấy sản phẩm</div>
                            </c:if>
                            <c:forEach var="product" items="${products}">
                                <div class="col-md-6 col-lg-4">
                                    <div class="rounded position-relative fruite-item">
                                        <div class="fruite-img">
                                            <img src="/images/product/${product.image}"
                                                class="img-fluid w-100 rounded-top" alt="">
                                        </div>
                                        <div class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                                            style="top: 10px; left: 10px;">Laptop
                                        </div>
                                        <div
                                            class="p-4 border border-secondary border-top-0 rounded-bottom">
                                            <h4 style="font-size: 15px;">
                                                <a href="/product/${product.id}">
                                                    ${product.name}
                                                </a>

                                            </h4>
                                            <p style="font-size: 13px;">
                                                ${product.shortDesc}</p>
                                            <div
                                                class="d-flex  flex-lg-wrap justify-content-center flex-column">
                                                <p style="font-size: 15px; text-align: center; width: 100%;"
                                                    class="text-dark  fw-bold mb-3">
                                                    <fmt:formatNumber type="number"
                                                        value="${product.price}" />
                                                    đ
                                                </p>
                                                <form action="/add-product-to-cart/${product.id}"
                                                    method="post">
                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                        value="${_csrf.token}" />

                                                    <button
                                                        class="mx-auto btn border border-secondary rounded-pill px-3 text-primary"><i
                                                            class="fa fa-shopping-bag me-2 text-primary"></i>
                                                        Add to cart
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>


                            <c:if test="${totalPages > 0}">
                                <div class="pagination d-flex justify-content-center mt-5">
                                    <li class="page-item">
                                        <a class="${1 eq currentPage ? 'disabled page-link' : 'page-link'}"
                                            href="/products?page=${currentPage - 1}${queryString}"
                                            aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">
                                        <li class="page-item">
                                            <a class="${(loop.index + 1) eq currentPage ? 'active page-link' : 'page-link'}"
                                                href="/products?page=${loop.index + 1}${queryString}">
                                                ${loop.index + 1}
                                            </a>
                                        </li>
                                    </c:forEach>
                                    <li class="page-item">
                                        <a class="${totalPages eq currentPage ? 'disabled page-link' : 'page-link'}"
                                            href="/products?page=${currentPage + 1}${queryString}"
                                            aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>

                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Single Product End -->    


    <!-- footer -->
    <jsp:include page="../layout/footer.jsp" />

    <script src="/client/js/jquery-1.11.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="/client/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="/client/js/plugins.js"></script>
    <script type="text/javascript" src="/client/js/script.js"></script>
  </body>
  </html>