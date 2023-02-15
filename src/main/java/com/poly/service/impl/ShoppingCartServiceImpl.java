package com.poly.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.poly.model.Product;
import com.poly.service.ShoppingCartService;
import com.poly.ultis.DataSharing;

@Service
@SessionScope
public class ShoppingCartServiceImpl implements ShoppingCartService{
	
	private static HashMap<Integer, Product> orders = new HashMap<>();
	
	@Override
	public void addProduct(Integer id) {
		Product prod = DataSharing.prod.get(id).orderProduct(1); //lấy giá trị đầ là 1 khi add
		if(!orders.containsKey(id)) { //kiểm tra xem id nó đã có trong client chưa, nếu chưa có thì put vào
			orders.put(prod.getId(), prod);
		}else if(prod != null) {
			int oldQuantity = orders.get(id).getQuantity(); // đã tồn tại thì +1
			orders.get(id).setQuantity(oldQuantity+1);
		}
		
	}

	@Override
	public void removeProduct(Integer id) {
		Product prod = orders.get(id); // nhận giá trị
		DataSharing.prod.get(id).orderProduct(0 - prod.getQuantity()); // lấy giá trị độ dài giá trị
		orders.remove(id);
	}

	@Override
	public void updateProduct(Integer id, int quantity) {
		Product prod = orders.get(id);
		Product prodCheck = DataSharing.prod.get(id).orderProduct(quantity - prod.getQuantity());
		if(quantity > 0) {
			if(prodCheck != null) {
				prod.setQuantity(quantity);
			}
		}else {
			orders.remove(id);
		}
		
	}

	@Override
	public void clear() {
		for(Integer id : orders.keySet()) {
			Product prod = orders.get(id);
			DataSharing.prod.get(id).orderProduct(0 - prod.getQuantity());
		}
		orders.clear();
		
	}

	@Override
	public Map<Integer, Product> getProduct() {
		// TODO Auto-generated method stub
		return orders;
	}

	@Override
	public int getCount() {
		int count = 0;
		for(Product prod : orders.values()) {
			count += prod.getQuantity();
		}
		return count;
	}

	@Override
	public double getAmout() {
		double amount = 0;
		for(Product prod : orders.values()){
			amount += prod.getPrice() * prod.getQuantity();
		}
		return amount;
	}

	@Override
	public void getDetail(Integer id) {
		Product prod = DataSharing.prod.get(id);
		orders.get(id).getId();
	}

	
}
