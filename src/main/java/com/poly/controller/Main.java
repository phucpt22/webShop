package com.poly.controller;

import java.time.Year;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.poly.dao.ChuaThanhToanDao;
import com.poly.dao.DanhGiaDAO;
import com.poly.dao.DonDatChiTietDAO;
import com.poly.dao.DonDatHangDAO;
import com.poly.dao.NguoiDungDAO;
import com.poly.model.ChuaThanhToan;
import com.poly.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class Main {
	@Autowired
	SessionService session;
	@Autowired
	NguoiDungDAO dao;
	@Autowired
	DonDatChiTietDAO dddao;
	@Autowired
	DanhGiaDAO dgdao;
	@Autowired
	DonDatHangDAO ddhdao;
	@Autowired
	ChuaThanhToanDao cttDao;
	

	@GetMapping("/admin")
	public String AdminSP(Model model, HttpServletRequest request)
	{
		session.set("uri-user", request.getRequestURI());
		
		// lấy tháng hiện tại
		int time = new Date().getMonth()+1;
		
		// Tổng số người dùng
		int nguoidung = dao.findAll().size();
		model.addAttribute("total_user",nguoidung);
		
		// Tổng đơn hàng
		int tongdh = dddao.chuatt();
		model.addAttribute("tongsanpham",tongdh);
		
		// Tổng tiền kiếm được
		String tongtien = dddao.tongtien(time);
		if (tongtien ==null) {
			tongtien = "0";
		}else {
			tongtien = tongtien;
		}
		model.addAttribute("tongtien",tongtien);
		
		// Đánh giá
		int dg = dgdao.findAll().size();
		model.addAttribute("danhgia",dg);
		
		// đánh giá tốt
		float good = dgdao.dgtot().size();
		model.addAttribute("good",good);
		
		// Mức độ
		double sum = (good / dg) * 100;
		model.addAttribute("mucdo",sum);
		
		// Số đơn hàng chờ xác nhận
		int n = ddhdao.findnotdone(time).size();
		model.addAttribute("xacnhan",n);
		
		// Số đơn hàng đã giao
		int d = ddhdao.finddone(time);
		model.addAttribute("dagiao",d);
		
		float tongdonhang = ddhdao.findAll().size();
		double tong = (d/tongdonhang) * 100;
		model.addAttribute("tongdon",tong);
		
		DoanhThu(model);

		List<ChuaThanhToan> dh = cttDao.choxacnhan();
		model.addAttribute("choxacnhan",dh);
	
		
		return "/admin/admin";
	}
	
	
	// ------------------ QUOC ANH ------------------
	public void DoanhThu(Model model)
	{
		int year = Year.now().getValue();
		model.addAttribute("year",year);
		// Tháng 1
		if(dddao.thang1(year) == null)
		{
			model.addAttribute("t1",0);
		}else
		{
			model.addAttribute("t1",dddao.thang1(year));
		}
		
		// Tháng 2
		if(dddao.thang2(year) == null)
		{
			model.addAttribute("t2",0);
		}else
		{
			model.addAttribute("t2",dddao.thang2(year));
		}
		
		// Tháng 3
		if(dddao.thang3(year) == null)
		{
			model.addAttribute("t3",0);
		}else
		{
			model.addAttribute("t3",dddao.thang3(year));
		}
		// Tháng 4
		if(dddao.thang4(year) == null)
		{
			model.addAttribute("t4",0);
		}else
		{
			model.addAttribute("t4",dddao.thang4(year));
		}
		// Tháng 5
		if(dddao.thang5(year) == null)
		{
			model.addAttribute("t5",0);
		}else
		{
			model.addAttribute("t5",dddao.thang5(year));
		}
		// Tháng 6
		if(dddao.thang6(year) == null)
		{
			model.addAttribute("t6",0);
		}else
		{
			model.addAttribute("t6",dddao.thang6(year));
		}
		// Tháng 7
		if(dddao.thang7(year) == null)
		{
			model.addAttribute("t7",0);
		}else
		{
			model.addAttribute("t7",dddao.thang7(year));
		}
		// Tháng 8
		if(dddao.thang8(year) == null)
		{
			model.addAttribute("t8",0);
		}else
		{
			model.addAttribute("t8",dddao.thang8(year));
		}
		// Tháng 9
		if(dddao.thang9(year) == null)
		{
			model.addAttribute("t9",0);
		}else
		{
			model.addAttribute("t9",dddao.thang9(year));
		}
		// Tháng 10
		if(dddao.thang10(year) == null)
		{
			model.addAttribute("t1",0);
		}else
		{
			model.addAttribute("t10",dddao.thang10(year));
		}
		// Tháng 11
		if(dddao.thang11(year) == null)
		{
			model.addAttribute("t11",0);
		}else
		{
			model.addAttribute("t11",dddao.thang11(year));
		}
		// Tháng 12
		if(dddao.thang12(year) == null)
		{
			model.addAttribute("t12",0);
		}else
		{
			model.addAttribute("t12",dddao.thang12(year));
		}
			
	}
	// ------------------ QUOC ANH ------------------
}
