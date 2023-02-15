<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.row .align-items-center {
	margin-bottom: -30px;
}
</style>
<header>
	<div class="main-header">
		<div class="header-top bg-lighter " style="height: 80px; margin-top: 10px;">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-lg-3 col-md-3 col-4">
						<div class="logo">
							<a href="<c:url value='/trangchu'/>"> <h1 style="color: red;">Day La LOGO</h1> </a>
						</div>
					</div>
					<div class="col-lg-9 col-md-6 col-6">
						<div class="header_right_info">

							<!-- Thêm mới -->
							<form action="/search/keywords=${searchsp}" method="post">
								<div class="search_container">
									<div class="search_box">
										<input placeholder="Search product..." type="text"
											name="tensp" value="${searchsp}">
										<button type="submit">
											<svg xmlns="http://www.w3.org/2000/svg" width="20"
												height="20" fill="currentColor" class="bi bi-search"
												viewBox="0 0 16 16">
                                                    <path
													d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                                </svg>
										</button>
									</div>
								</div>
							</form>
							<!-- End -->

							<div class="text-danger fw-bold mx-3">${user.hoten != null? user.hoten: ""}</div>
							<div class="header_account_area">
								<div class="header_account-list top_links">
									<a href="/logout"><svg xmlns="http://www.w3.org/2000/svg"
											width="25" height="25" fill="currentColor"
											class="bi bi-people" viewBox="0 0 16 16">
                                                    <path
												d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0zM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816zM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275zM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4z" />
                                                </svg></a>
								</div>
								<div class="header_account-list  mini_cart_wrapper">
									<a href="#"><svg xmlns="http://www.w3.org/2000/svg"
											width="25" height="25" fill="currentColor"
											class="bi bi-bag-check" viewBox="0 0 16 16">
                                                    <path
												fill-rule="evenodd"
												d="M10.854 8.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708 0z" />
                                                    <path
												d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z" />
                                                </svg><span class="item_count">${total}</span></a>
								</div>
								<div class="mini_cart">
									<div class="cart_gallery">
										<div class="cart_close">
											<div class="cart_text">
												<h3>cart</h3>
											</div>
											<div class="mini_cart_close">
												<a href="#"><svg xmlns="http://www.w3.org/2000/svg"
														width="16" height="16" fill="currentColor"
														class="bi bi-x-square" viewBox="0 0 16 16">
                                                                    <path
															d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
                                                                    <path
															d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                                                                </svg></a>
											</div>
										</div>
										<!-- GIỎ HÀNG MINI -->
										<c:forEach var="item" items="${cart}">
											<div class="cart_item">
												<div class="cart_img">
													<a href="#"><img
														src="<c:url value='/images/product/${item.anh}'/>" alt=""></a>
												</div>
												<div class="cart_info">
													<a href="/sanpham/id_sp=${item.id}">${item.ten}</a>

													<!-- CẬP NHẬT GIỎ HÀNG -->
													<p>Amount:
													<form name="frmUpdate" action="/giohang/capnhat/${item.id}"
														method="post">
														<input type="number" name="soluong"
															onchange="document.frmUpdate.submit();"
															value='${item.soluong}' min="1"> x <span>
															$${item.gia} </span>
													</form>
													</p>

												</div>
												<div class="cart_remove">
													<a href="/giohang/xoa/${item.id}"><svg
															xmlns="http://www.w3.org/2000/svg" width="20" height="20"
															fill="currentColor" class="bi bi-trash"
															viewBox="0 0 16 16">
                                                            <path
																d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                                                            <path
																fill-rule="evenodd"
																d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                                                          </svg></a>
												</div>
											</div>
										</c:forEach>

									</div>
									<div class="mini_cart_table">

										<!-- TỔNG TIỀN GIỎ HÀNG -->
										<div class="cart_table_border">
											<div class="cart_total">
												<span>Sub total:</span> <span class="price">$${totalAmount}</span>
											</div>
											<div class="cart_total mt-10">
												<span>total (gồm VAT):</span> <span class="price">$${totalAmount
													+ (totalAmount * 10 / 100)}</span>
											</div>
										</div>

									</div>
									<div class="mini_cart_footer">
										<div class="cart_button">
											<a href="#"><i class="fa fa-shopping-cart"></i> View cart</a>
										</div>
										<div class="cart_button">
											<a class="active" data-bs-toggle="modal"
												data-bs-target="#checkOutModal"><i class="fa fa-sign-in"></i>
												Checkout</a>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<br> <br>
			</div>
		</div>

		<div class="header_bottom sticky-header">
			<div class="container">
				<div class="row align-items-center">

					<div class="col-lg-6">
						<!--main menu start-->
						<div class="main_menu menu_position">
							<nav>
								<ul class="nav nav-tabs menu1 hover:bg-secondary">
									<li class="nav-item"><button
											class="btn btn-outline-secondary" type="button"
											data-bs-toggle="offcanvas"
											data-bs-target="#offcanvasScrolling"
											aria-controls="offcanvasScrolling" style="margin-top: 3%; font-weight: 600;">Sắp xếp theo giá</button></li>
									<li class="nav-item"><a class="active"
										href="<c:url value='/trangchu'/>">Trang chủ</a></li>
									<li class="mega_items"><a href="/ds-sanpham">Sản phẩm<i
											class="fa fa-angle-down"></i></a>
										<div class="mega_menu">
											<ul class="mega_menu_inner">
												<li><a href="#">Tên hãng</a>
													<ul>

														<!-- Danh mục - Main -->
														<c:forEach var="item" items="${DM_Hang}">
															<li><a href="/ds-sanpham/id_dm=${item.id_dm}">${item.tendm}</a></li>
														</c:forEach>

													</ul></li>
												<li><a href="#">Tên loại</a>
													<ul>

														<!-- Danh mục - Điện thoại -->
														<c:forEach var="item" items="${DM_Loai}">
															<li><a href="/ds-sanpham/id_dm=${item.id_dm}">${item.tendm}</a></li>
														</c:forEach>

													</ul></li>

											</ul>
										</div></li>
									<li class="nav-item"><a href="#">Pages <i
											class="fa fa-angle-down"></i></a>
										<ul class="sub_menu pages">
											<li><a href="about.html">About Us</a></li>
											<li><a href="services.html">services</a></li>
											<li><a href="faq.html">Frequently Questions</a></li>
											<li><a href="contact.html">contact</a></li>
											<li><a href="login.html">login</a></li>
										</ul></li>

									<c:if test="${user.vaitro}">
										<li class="nav-item menu-item-has-children"><a
											href="/admin"> Admin</a></li>
									</c:if>
								</ul>
							</nav>
						</div>
						<!--main menu end-->
					</div>
					<div class="col-lg-6" >
						<div class="call-support" style="margin-left: 200px;">
							<ul class="nav">
								<li class="nav-item"> <a> Công nghệ 24h | </a></li>
								<li class="nav-item"> <a> Hỏi đáp | </a></li>
								<li class="nav-item"> <a> Phone: 1234567890 </a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="checkOutModal" tabindex="-1"
		aria-labelledby="editModal" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header bg-warning">
					<h4 class="modal-title" id="exampleModalLabel">Thanh toán</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<form:form action="/checkout" name="frmTT" modelAttribute="donDH"
					method="post" class="row g-3">
					<div class="modal-body">
						<div class="container-fluid">

							<div class="mb-2">
								<label for="inputName" class="form-label">Tên khách hàng</label>
								<input type="text" class="form-control" id="inputName"
									name="tenkh" value="${user.hoten}">
							</div>
							<!-- <div class="text-danger mb-2 ms-2" style="margin-top: -0.2rem;" ng-show="frmTT.tenkh.$invalid">Vui lòng nhập tên của bạn</div> -->

							<div class="mb-2">
								<select class="form-select" size="1"
									aria-label="size 3 select example">
									<option>Hình thức thanh toán</option>
									<option value="ck">Chuyển khoản</option>
									<option value="tc" selected>Thanh toán trực tiếp</option>
								</select>
							</div>

							<div class="mb-2">
								<label for="inputGia" class="form-label">Giá</label> <input
									type="number" min="0" class="form-control" id="inputGia"
									name="tongHoaDon"
									value="${totalAmount + (totalAmount * 10 / 100)}"
									disabled="disabled">
							</div>
							<!-- <div class="text-danger mb-2 ms-2" style="margin-top: -0.2rem;" ng-hide="tongHoaDon = 0,0">Đơn hàng chưa có sản phẩm</div> -->

							<div class="mb-2">
								<label for="inputSdt" class="form-label">Số điện thoại</label> <input
									type="text" class="form-control" id="inputSdt" name="sodt"
									value="${user.sodt}" ng-model="sodt">
							</div>
							<!-- <div class="text-danger mb-2 ms-2" style="margin-top: -0.2rem;" ng-hide="frmTT.sodt.$valid">Vui lòng nhập số điện thoại</div> -->

							<div class="mb-2">
								<label for="inputDiaChi" class="form-label">Địa chỉ</label> <input
									type="text" class="form-control" id="inputDiaChi" name="diachi"
									value="${not empty user.diachi? user.diachi: ''}">
							</div>
							<!-- <div class="text-danger mb-2 ms-2" style="margin-top: -0.2rem;" ng-hide="frmTT.diachi.$valid">Vui lòng nhập địa chỉ giao hàng</div> -->

							<div class="mb-2">
								<label for="exampleFormControlTextarea1" class="form-label">Ghi
									chú</label>
								<textarea class="form-control" id="exampleFormControlTextarea1"
									name="ghichukh" rows="2"></textarea>
							</div>

						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-success">Thanh Toán</button>
						<a type="submit" class="btn btn-secondary" data-bs-dismiss="modal">Close</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</header>
<div class="sidebar  shop-layout-boxed">
	<div class="container-fluid">
		<div class="main-archive-product row">
			<div
				class="bwp-sidebar sidebar-product col-xl-3 col-lg-3 col-md-12 col-12 px-4">
				<div id="bwp_ajax_filte-6" class="widget bwp_ajax_filte">
					<div id="bwp_filter_ajax950953581664312889"
						class="bwp-woocommerce-filter-product">
						<div class="bwp-filter-ajax">
							<!-- LỌC GIÁ -->


							<div class="offcanvas offcanvas-start" data-bs-scroll="true"
								data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling"
								aria-labelledby="offcanvasScrollingLabel">
								<div class="offcanvas-header">
									<h5 class="offcanvas-title" id="offcanvasScrollingLabel">Các mệnh giá</h5>
									<button type="button" class="btn-close text-reset"
										data-bs-dismiss="offcanvas" aria-label="Close"></button>
								</div>
								<hr>
								<div class="offcanvas-body">
									<form name="frmSearchPrice" action="/search/price"
										method="post" id="bwp_form_filter_product">
										<div class="bwp-filter bwp-filter-category">
											<div id="pa_category" class="filter_category_product">
												<div data-id_category="431" class="item-category ">
													<label class="name">Tất cả</label>
													<div class="count">
														<input ${price==0?"checked":""} type="radio" name="price"
															id="" value="0"
															onchange="document.frmSearchPrice.submit();">
													</div>
												</div>
												<div data-id_category="431" class="item-category ">
													<label class="name">Giá dưới 10 triệu</label>
													<div class="count">
														<input ${price==1?"checked":""} type="radio" name="price"
															id="" value="1"
															onchange="document.frmSearchPrice.submit();">
													</div>
												</div>
												<div data-id_category="151" class="item-category ">
													<label class="name">Giá từ 10 đến 15 triệu</label>
													<div class="count">
														<input ${price==2?"checked":""} type="radio" name="price"
															id="" value="2"
															onchange="document.frmSearchPrice.submit();">
													</div>
												</div>
												<div data-id_category="401" class="item-category ">
													<label class="name">Giá từ 15 đến 20 triệu</label>
													<div class="count">
														<input ${price==3?"checked":""} type="radio" name="price"
															id="" value="3"
															onchange="document.frmSearchPrice.submit();">
													</div>
												</div>
												<div data-id_category="381" class="item-category ">
													<label class="name">Giá từ 20 đến 30 triệu</label>
													<div class="count">
														<input ${price==4?"checked":""} type="radio" name="price"
															id="" value="4"
															onchange="document.frmSearchPrice.submit();">
													</div>
												</div>
												<div data-id_category="407" class="item-category ">
													<label class="name">Giá trên 30 triệu</label>
													<div class="count">
														<input ${price==5?"checked":""} type="radio" name="price"
															id="" value="5"
															onchange="document.frmSearchPrice.submit();">
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>