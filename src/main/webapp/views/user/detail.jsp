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
<style type="text/css">
	body{background-color: #DDDDDD}.product{background-color: #eee}.brand{font-size: 13px}.act-price{color:red;font-weight: 700}.dis-price{text-decoration: line-through}.about{font-size: 14px}.color{margin-bottom:10px}label.radio{cursor: pointer}label.radio input{position: absolute;top: 0;left: 0;visibility: hidden;pointer-events: none}label.radio span{padding: 2px 9px;border: 2px solid #ff0000;display: inline-block;color: #ff0000;border-radius: 3px;text-transform: uppercase}label.radio input:checked+span{border-color: #ff0000;background-color: #ff0000;color: #fff}.btn-danger{background-color: #ff0000 !important;border-color: #ff0000 !important}.btn-danger:hover{background-color: #da0606 !important;border-color: #da0606 !important}.btn-danger:focus{box-shadow: none}.cart i{margin-right: 10px}
</style>
<script type="text/javascript">
function change_image(image){

    var container = document.getElementById("main-image");

   container.src = image.src;
}



document.addEventListener("DOMContentLoaded", function(event) {







});

</script>
</head>
<body>
	<div class="container mt-5 mb-5" >
    <div class="row d-flex justify-content-center" style="height: 600px; border-radius: 10%">
        <div class="col-md-10" style="height: 600px; border-radius: 10%">
            <div class="card" style="height: 600px; border-radius: 10%; border: 0.1px;">
                <div class="row" style="height: 500px; border-radius: 10%">
                    <div class="col-md-6" style="height: 600px; border: 0.1px;">
                        <div style="height: 500px;margin-top: 100px;" class="images">
                            <div class="text-center"> <img alt="" style="width: 90%;" src="/views/img/${detail.image}"> </div>

                        </div>
                    </div>
                    <div class="col-md-6" style="height: 500px; border-radius: 10%;">
                        <div style="height: 500px;border-radius: 10%;" class="product p-4">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="d-flex align-items-center"> <i class="fa fa-long-arrow-left"></i> <span class="ml-1">Back</span> </div> <i class="fa fa-shopping-cart text-muted"></i>
                            </div>
                            <div class="mt-4 mb-3"> <span class="text-uppercase text-muted brand">PTP</span>
                                <h5 class="text-uppercase">${detail.name}</h5>
                                <div class="price d-flex flex-row align-items-center"> <span class="act-price"><fmt:formatNumber type="number" value="${detail.price}"/> VND</span>
                                    <div class="ml-2"> <small class="dis-price">10000 VND</small> <span>140% OFF</span> </div>
                                </div> 
                            </div>
                            <p class="about">${detail.description}</p>
                            <div class="sizes mt-5">
                                <h6 class="text-uppercase">Size</h6> <label class="radio"> <input type="radio" name="size" value="S" checked> <span>S</span> </label> <label class="radio"> <input type="radio" name="size" value="M"> <span>M</span> </label> <label class="radio"> <input type="radio" name="size" value="L"> <span>L</span> </label> <label class="radio"> <input type="radio" name="size" value="XL"> <span>XL</span> </label> <label class="radio"> <input type="radio" name="size" value="XXL"> <span>XXL</span> </label>
                            </div>
                            <div class="cart mt-4 align-items-center"> <a class="btn btn-danger text-uppercase mr-2 px-4" href="/cart/add/${detail.id}">Add to cart</a> <i class="fa fa-heart text-muted"></i> <i class="fa fa-share-alt text-muted"></i> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	

	
</body>
</html>