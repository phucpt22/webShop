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
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/f757c7087e.js"></script>
</head>
<body>
	<a class="btn btn-outline-secondary" data-bs-toggle="offcanvas"
                href="#offcanvasExample" role="button"
                aria-controls="offcanvasExample">
                All catarories
              </a>
              <div class="offcanvas offcanvas-start" tabindex="-1"
                id="offcanvasExample" aria-labelledby="offcanvasExampleLabel"
                style="width: 25%;">
                <div class="offcanvas-header">
                  <h5 class="offcanvas-title" id="offcanvasExampleLabel">All
                    catarories</h5>
                  <button type="button" class="btn-close text-reset"
                    data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                  <ul>
                    <li><a href="#">Dell</a></li>
                    <li><a href="#">Apple</a></li>
                    <li><a href="#">Lenovo</a></li>
                    <li><a href="#">Huawei</a></li>
                  </ul>
                </div>
              </div>
              <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="true"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
</body>
</html>