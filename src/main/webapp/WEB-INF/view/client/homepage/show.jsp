<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500&family=Lato:wght@300;400;700&display=swap" rel="stylesheet">

    <meta name="_csrf" content="${_csrf.token}" />
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}" />

    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.css"
        rel="stylesheet">
    <!-- script
    ================================================== -->
    <script src="/client/js/modernizr.js"></script>
  </head>

  <body data-bs-spy="scroll" data-bs-target="#navbar" data-bs-root-margin="0px 0px -40%" data-bs-smooth-scroll="true" tabindex="0">
    <!-- header -->
    <jsp:include page="../layout/header.jsp" />
    <!-- banner -->
    <jsp:include page="../layout/banner.jsp" />

    <!-- product -->
    <section id="mobile-products" class="product-store position-relative padding-large no-padding-top">
        <div class="container">
          <div class="row">
            <div class="display-header d-flex justify-content-between pb-3">
              <h2 class="display-7 text-dark text-uppercase">Mobile Products</h2>
              <div class="btn-right">
                <a href="index.html" class="btn btn-medium btn-normal text-uppercase">Go to Shop</a>
              </div>
            </div>
            <div class="swiper product-swiper">
              <div class="swiper-wrapper">
                <c:forEach var="product" items="${products}">
                    <div class="swiper-slide">
                      <div class="product-card position-relative">
                        <div class="image-holder">
                          <img src="/images/product/${product.image}" alt="product-item" class="img-fluid">
                        </div>
                        <form action="/add-product-to-cart/${product.id}" method="post">
                          <div class="cart-concern position-absolute">
                            <div class="cart-button d-flex">
                              <input type="hidden"
                              name="${_csrf.parameterName}"
                              value="${_csrf.token}" /> 
                              <button data-product-id="${product.id}"  class="btn btn-medium btn-black">Add to Cart<svg class="cart-outline"><use xlink:href="#cart-outline"></use></svg></button>
                            </div>
                          </div>
                        </form>
                        <div class="card-detail d-flex justify-content-between align-items-baseline pt-3">
                          <h3 class="card-title text-uppercase">
                            <a href="/product/${product.id}">${product.name}</a>
                          </h3>
                          <span class="item-price text-primary">${product.price}d</span>
                        </div>
                      </div>
                    </div>

                </c:forEach>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-pagination position-absolute text-center"></div>
      </section>
    <!-- footer -->
    <jsp:include page="../layout/footer.jsp" />

    <script src="/client/js/jquery-1.11.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="/client/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="/client/js/plugins.js"></script>
    <script type="text/javascript" src="/client/js/script.js"></script>
  </body>
  </html>