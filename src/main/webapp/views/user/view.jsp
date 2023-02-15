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
</head>
<body>
	<table class="table" style="width: 100%">
		<tr>
			<th scope="col">Id</th>
			<th scope="col">Image</th>
			<th scope="col">Name</th>
			<th scope="col">Price</th>
			<th scope="col">Quantity</th>
			<th scope="col">Amount</th>
			<th scope="col">Edit</th>
		</tr>
		<c:forEach var="prod" items="${cart}">
			<form action="/cart/update/${prod.value.id}" method="post">
				<input type="hidden" name="id" value="${prod.value.id}" />
				<tr>
					<td scope="row">${prod.value.id}</td>
					<td scope="row"><img style="display: block; max-width: 230px; max-height: 95px; width: auto; height: auto;" src="/views/img/${prod.value.image}">
					</td>
					<td scope="row">${prod.value.name}</td>
					<td scope="row"><fmt:formatNumber type="number"
							value="${prod.value.price}" /> VNĐ</td>
					<td scope="row"><input name="quantity" type="number"
						value="${prod.value.quantity}" onblur="this.form.submit()"
						style="width: 100%;" /></td>
					<td scope="row"><fmt:formatNumber type="number"
							value="${prod.value.price * prod.value.quantity}" /> VNĐ</td>
					<td scope="row"><a class="btn btn-danger"
						href="/cart/remove/${prod.value.id}"> Remove</a></td>
				</tr>
			</form>
		</c:forEach>
	</table>
	<h2>
		Tổng tiền:
		<fmt:formatNumber type="number" value="${amount}" />
		VNĐ
	</h2>
	<a class="btn btn-secondary" href="/cart/clear"> Clear Cart </a>
	<a class="btn btn-secondary" href="/products"> Add more </a>
</body>
</html>