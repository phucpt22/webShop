<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/f757c7087e.js"></script>
<style type="text/css">
.container-fluid {
	margin: 0 auto;
	float: none;
	margin-bottom: 10px;
}

.navbar-nav {
	margin-left: 200px;
}

.nav-item {
	margin-left: 40px;
}

.d-flex {
	margin: 0px 0px 10px 20px;
}
</style>
</head>
<body>
	<!-- begin information bar -->
	<div class="info-bar bg-dark" style="color: white">
		<div
			class="container d-flex justify-content-between align-items-center p-1">
			<div class="">
				<span class="ibar-title"><i
					class="fa-solid fa-phone-volume me-2"></i>Hotline:</span> <span
					class="me-2"> 0123456789</span> | <span class="ibar-title"><i
					class="fa-brands fa-facebook-f me-2"></i> Facebook: </span> <a
					style="color: white" class="me-2">phamphuc</a> | <span
					class="ibar-title"><i class="fa-solid fa-language me-2"></i>
					Language:</span> <select style="color: white"
					class="rounded mx-2 bg-transparent border-0 text-center">
					<option style="color: black" value="en">English</option>
					<option style="color: black" value="vn">Vietnamese</option>
				</select>
			</div>
			<div class="" style="color: white">
				<c:choose>
					<c:when test="${sessionScope.username != null}">
						<div class="nav-item dropdown d-inline-flex">
							<a style="color: white"
								class="nav-link ibar-title py-0 dropdown-toggle" href="#"
								id="navbarDropdown" role="button" data-toggle="dropdown"
								aria-expanded="false"> <i class="fa-solid fa-user me-2"></i>
								Hi, PhamTrongPhuc
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">User Profile</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="">Logout</a>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<i class="fa-solid fa-user"></i>
						<a style="color: white" class="ibar-title me-3"
							href="/account/login">Login</a> |
		                    <a style="color: white" href="#"
							class="ibar-title">Register</a>
					</c:otherwise>
				</c:choose>
			</div>
			<div>
				<a class="btn btn-danger cart-button btn-block" href="/cart/view">
					Go to cart <span>(<fmt:formatNumber type="number"
							value="${cartQuantity}" />)
				</span>
				</a>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container">
			<a class="navbar-brand" href="#">
				<h1>DAY LA LOGO</h1>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Portfolio</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Contact</a>
					</li>

				</ul>

			</div>
		</div>
	</nav>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="/views/img/banner1.png"
					alt="First slide">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="/views/img/banner2.png"
					alt="Second slide">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="/views/img/banner3.png"
					alt="Third slide">
				<div class="carousel-caption d-none d-md-block"></div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<div class="wrapper" style="margin-top: 40px;">
		<div class="container">
			<div class="row g-1">
				<c:forEach var="prod" items="${products}">

					<div class="col-md-3">
						<div class="card p-3" style="height: 392px;">
							<div class="text-center" style="height: 202px;">
								<img src="/views/img/${prod.image}" width="200">
							</div>
							<h3>${prod.name}</h3>
							<span class="font-weight-bold d-block">Quantity:
								${prod.quantity}</span> <span class="font-weight-bold d-block">Price:
								<fmt:formatNumber type="number" value="${prod.price}" />VNĐ
							</span> <a class="btn btn-danger cart-button btn-block"
								href="/cart/add/${prod.id}"> Add to cart </a>
								<a class="btn btn-dark cart-button btn-block"
								href="/detail/${prod.id}"> Detail </a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<br>
	<footer class="bg-dark text-center text-lg-start text-white">
		<!-- Grid container -->
		<div class="container p-4" style="width: 100%;">
			<!--Grid row-->
			<div class="row my-4">
				<!--Grid column-->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">

					<div
						class="rounded-circle bg-white shadow-1-strong d-flex align-items-center justify-content-center mb-4 mx-auto"
						style="width: 150px; height: 150px;">
						<img src="/views/img/java.png" height="70" alt="" loading="lazy" />
					</div>

					<p class="text-center">Không biết ghi gì ở đây nữa nên là ghi
						đại cho nó dài</p>

					<ul class="list-unstyled d-flex flex-row justify-content-center">
						<li><a class="text-white px-2" href="#!"> <i
								class="fab fa-facebook-square"></i>
						</a></li>
						<li><a class="text-white px-2" href="#!"> <i
								class="fab fa-instagram"></i>
						</a></li>
						<li><a class="text-white ps-2" href="#!"> <i
								class="fab fa-youtube"></i>
						</a></li>
					</ul>

				</div>
				<!--Grid column-->

				<!--Grid column-->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase mb-4">Dịch vụ</h5>

					<ul class="list-unstyled">
						<li class="mb-2"><a href="#!" class="text-white">Tích
								điểm Quà tặng VIP</a></li>
						<li class="mb-2"><a href="#!" class="text-white"></i>Lịch sử
								mua hàng</a></li>
						<li class="mb-2"><a href="#!" class="text-white">Tìm hiểu
								về mua trả góp</a></li>
						<li class="mb-2"><a href="#!" class="text-white">Chính
								sách bảo hành</a></li>
						<li class="mb-2"><a href="#!" class="text-white">Chính
								sách đổi trả</a></li>
						<li class="mb-2"><a href="#!" class="text-white">Giao
								hàng & Thanh toán</a></li>
						<li class="mb-2"><a href="#!" class="text-white">Hướng
								dẫn mua online</a></li>
					</ul>
				</div>
				<!--Grid column-->

				<!--Grid column-->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase mb-4">Công ty</h5>

					<ul class="list-unstyled" style="text-decoration: none;">
						<li class="mb-2"><a href="#!" class="text-white">Giới
								thiệu công ty (MWG.vn)</a></li>
						<li class="mb-2"><a href="#!" class="text-white">Tuyển
								dụng</a></li>
						<li class="mb-2"><a href="#!" class="text-white">Gửi góp
								ý, khiếu nại</a></li>
						<li class="mb-2"><a href="#!" class="text-white">Tìm siêu
								thị (3.384 shop)</a></li>
						<li class="mb-2"><a href="#!" class="text-white">Xem bản
								mobile</a></li>
						<li class="mb-2"><a href="#!" class="text-white">Hỏi đáp</a></li>
					</ul>
				</div>
				<!--Grid column-->

				<!--Grid column-->
				<div class="col-lg-3 col-md-6 mb-4 mb-md-0">
					<h5 class="text-uppercase mb-4">Tương tác</h5>

					<ul class="list-unstyled">
						<li>
							<p>
								<i class="fas fa-map-marker-alt pe-2"></i>TOKY, TRUNG MY TAY, 12
								District
							</p>
						</li>
						<li>
							<p>
								<i class="fas fa-phone pe-2"></i>+ 01 234 567 89
							</p>
						</li>
						<li>
							<p>
								<i class="fas fa-envelope pe-2 mb-0"></i>phamphuc@gmail.com
							</p>
						</li>
					</ul>
				</div>
				<!--Grid column-->
			</div>
			<!--Grid row-->
		</div>
		<!-- Grid container -->

		<!-- Copyright -->
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2)">
			© 2023 Copyright: <a class="text-white"
				href="https://mdbootstrap.com/">phucpham.com</a>
		</div>
		<!-- Copyright -->
	</footer>
	<!-- End of .container -->
</body>
</html>