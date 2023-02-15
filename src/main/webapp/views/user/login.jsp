<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<!-- Modal -->
	<div class="demo-container">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-12 mx-auto">
					<div class="text-center image-size-small position-relative">
						<img src="/views/img/user.png"
							class="rounded-circle p-2 bg-white">
						<div class="icon-camera">
							<a href="" class="text-primary"><i class="lni lni-camera"></i></a>
						</div>
					</div>
					<div class="p-5 bg-white rounded shadow-lg">
						<h3 class="mb-2 text-center pt-5">Sign In</h3>
						<p class="text-center lead">Sign In to manage all your devices</p>
						<form action="/account/login" method="post">
							<label class="font-500">UserName</label> <input value="${cookie.username.value}" name="username"
								class="form-control form-control-lg mb-3" type="text"> <label
								class="font-500">Password</label> <input value="${cookie.password.value}" name="password"
								class="form-control form-control-lg" type="password">
							<div class="mb-3 form-check">
								<c:choose>
									<c:when test="${cookie.remember == null}">
										<input type="checkbox" class="form-check-input" id="remember"
											name="remember" value="true">
									</c:when>
									<c:otherwise>
										<input type="checkbox" class="form-check-input" id="remember"
											checked name="remember" value="true">
									</c:otherwise>
								</c:choose>

								<label class="form-check-label" for="remember">Remember
									me?</label>
							</div>
							<p class="m-0 py-4">
								<a href="" class="text-muted">Forget password?</a>
							</p>
							<button class="btn btn-primary btn-lg w-100 shadow-lg">SIGN
								IN</button>
						</form>
						<div class="text-center pt-4">
							<p class="m-0">
								Do not have an account? <a href=""
									class="text-dark font-weight-bold">Sign Up</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>