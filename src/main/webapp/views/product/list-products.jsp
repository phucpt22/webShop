<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file="/views/head/linkhead.jsp"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Index</title>
</head>

<body>
	<!-- HEADER BEGIN -->
	<%@include file="/views/header/header.jsp"%>
	<!-- HEADER END -->

	<%-- <div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

			<div class="col-xl-9 col-lg-9 col-md-12 col-12">
				<div class="content-products-list">
					<ul class="products products-list row grid"
						data-col="col-lg-4 col-md-4 col-sm-6 col-6">

						<!-- DANH SÁCH SẢN PHẨM -->
						<c:forEach var="item" items="${dssanpham}">
							<li class="col-xl-4 col-lg-4 col-md-6 col-6">

								<div
									class="card products-entry content-product1 clearfix product-wapper">
									<div class="products-thumb">
										<!-- ẢNH -->
										<div class="product-thumb-hover">
											<a href="/sanpham/id_sp=${item.id_sp}"
												class="woocommerce-LoopProduct-link"><img
												style="width: 18rem"
												src="<c:url value='/images/product/${item.anh}'/>"
												class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image"
												alt="" loading="lazy"></a>
										</div>
										<!-- CÁC NÚT -->
										<div class="product-button">
											<ul class="product-button-social">
												<!-- NÚT [GIỎ HÀNG] -->
												<li><a href="/giohang/them/${item.id_sp}"><svg
															xmlns="http://www.w3.org/2000/svg" width="16" height="16"
															fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
                                                                    <path
																d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z" />
                                                                </svg></a></li>
												<!-- NÚT [YÊU THÍCH] -->
												<li><a href="#"><svg
															xmlns="http://www.w3.org/2000/svg" width="16" height="16"
															fill="currentColor" class="bi bi-heart"
															viewBox="0 0 16 16">
                                                                    <path
																d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                                                </svg></a></li>
												<!-- NÚT [TÌM] -->
												<li><a href="#"><svg
															xmlns="http://www.w3.org/2000/svg" width="16" height="16"
															fill="currentColor" class="bi bi-search"
															viewBox="0 0 16 16">
                                                                    <path
																d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                                                </svg></a></li>
											</ul>
										</div>
									</div>
									<div class="products-content">
										<div class="contents">
											<!-- TÊN SẢN PHẨM -->
											<h5 class="product-title">
												<a>${item.tensp}</a>
											</h5>
											<!-- GIÁ SẢN PHẨM -->
											<span class="price"> <span
												class="woocommerce-Price-amount amount"><bdi> <span
														class="woocommerce-Price-currencySymbol"> <fmt:formatNumber
															type="number" value="${item.gia}" /> VND
													</span></bdi> </span>
											</span>
										</div>
									</div>
								</div>
							</li>

						</c:forEach>
						<!-- DANH SÁCH SẢN PHẨM -->

					</ul>
				</div>

				<!-- PHÂN TRANG -->
				<div class="bwp-top-bar bottom clearfix">
					<nav aria-label="">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#"
								tabindex="-1">Frist</a></li>
							<li class="page-item"><a class="page-link" href="#">Prev</a></li>
							<li class="page-item" aria-current="page"><a
								class="page-link" href="#">Next</a></li>
							<li class="page-item"><a class="page-link" href="#">Last</a></li>
						</ul>
					</nav>
				</div>
				<!-- END -->

			</div>
		</main>
	</div> --%>









		<br> <br>
		<div class="container-md container-sm container">
			<div class="col-md-10">
				<h2 class="exploreOurProducts title">Explore our Products</h2>
			</div>
			<div class="col-md-2"></div>
			<br>
			<div class="products">
				<div
					class="row row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 g-4">
					<c:forEach var="item" items="${dssanpham}">
					<div class="col">
						<div class="product-top" style="width: 17rem;">
							<div class="product-img">
								<a href="/sanpham/id_sp=${item.id_sp}"><img src="<c:url value='/images/product/${item.anh}'/>" class="w-100"/></a>
							</div>
							<div class="product-hover-action">
								<ul class="cart-action">
									<li class="wishlist"><a href="#"><i
											class="far fa-heart"></i></a></li>
									<li class="select-option"><a href="/giohang/them/${item.id_sp}">Add to
											Cart</a></li>
									<li class="quickview"><a href="#" data-bs-toggle="modal"
										data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
								</ul>
							</div>
							<div class="product-name">
								<a href="#" class="name">${item.tensp}</a>
							</div>
							<div class="product-price">
								<span class="current-price" > <fmt:formatNumber type="number" value="${item.gia}"/> VND</span> 
								<span class="old-price"> <fmt:formatNumber type="number" value="${item.gia -500000}"/> VND</span>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
			<div class="row" >
				<div class="col-lg-12 text-center mt--20 mt_sm--0">
					<a href="#" class="axil-btn btn-bg-lighter btn-load-more"  style="border: 0.5px solid gray;">Load
						More</a>
				</div>
			</div>
			<br>
			<div class="bwp-top-bar bottom clearfix">
					<nav aria-label="">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#"
								tabindex="-1">Frist</a></li>
							<li class="page-item"><a class="page-link" href="#">Prev</a></li>
							<li class="page-item" aria-current="page"><a
								class="page-link" href="#">Next</a></li>
							<li class="page-item"><a class="page-link" href="#">Last</a></li>
						</ul>
					</nav>
				</div>
		</div>


	<footer class="footer_widgets">
		<%@include file="/views/footer/footer.jsp"%>
	</footer>

	<%@include file="/views/foot/linkfoot.jsp"%>

</body>

</html>