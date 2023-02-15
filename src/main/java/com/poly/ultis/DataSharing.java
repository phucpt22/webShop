package com.poly.ultis;

import java.util.HashMap;

import com.poly.model.Product;

public class DataSharing {
	public static HashMap<Integer, Product> prod = new HashMap<>();
	static {
		prod.put(1, new Product(1,"Laptop Gaming Dell1", 15000000, 15, "This is a laptop", "anh1.jpg"));
		prod.put(2, new Product(2,"Laptop Gaming Dell2", 16000000, 25, "This is a laptop", "anh2.jpg"));
		prod.put(3, new Product(3,"Laptop Gaming Dell3", 17000000, 35, "This is a laptop", "anh3.jpg"));
		prod.put(4, new Product(4,"Laptop Gaming Dell4", 18000000, 45, "This is a laptop", "anh4.jpg"));
		prod.put(5, new Product(5,"Laptop Gaming Dell5", 19000000, 55, "This is a laptop", "anh5.jpg"));
		prod.put(6, new Product(6,"Laptop Gaming Dell6", 20000000, 65, "This is a laptop", "anh6.jpg"));
		prod.put(7, new Product(7,"Laptop Gaming Dell7", 21000000, 75, "This is a laptop", "anh7.jpg"));
		prod.put(8, new Product(8,"Laptop Gaming Dell8", 22000000, 85, "This is a laptop", "anh8.jpg"));
	}
}
