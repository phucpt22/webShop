package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.poly.service.SessionService;
import com.poly.service.ShoppingCartService;
import com.poly.ultis.DataSharing;

@Controller
public class ProductsController {
	@Autowired
	ShoppingCartService cart;
	@Autowired
	SessionService session;
	@GetMapping("/products")
	public String getProducts(Model model) {
		model.addAttribute("products", DataSharing.prod.values());
		return "/user/index";
	}
	@GetMapping("/test")
	public String getTest() {

		return "/common/header";
	}
	@GetMapping("/detail/{id}")
	public String detail(@PathVariable("id") int id, Model model) {
		model.addAttribute("detail", DataSharing.prod.get(id));
		return "/user/detail";
	}
}
