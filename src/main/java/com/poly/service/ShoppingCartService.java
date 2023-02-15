package com.poly.service;

import java.util.Map;

import com.poly.model.Product;


public interface ShoppingCartService {
	void addProduct(Integer id); //thêm mặt hàng hoặc tăng số lượng
	void removeProduct(Integer id); //xóa khỏi giỏ
	void updateProduct(Integer id, int quantity); //thay đổi số lượng
	void clear(); //lấy tất cả các mặt hàng
	Map<Integer, Product> getProduct(); //lấy tổng số lượng các mặt hàng trong giỏ
	int getCount(); //lấy tổng số tiền tất cả các mặt hàng trong giỏ
	double getAmout();
	void getDetail(Integer id);
}
