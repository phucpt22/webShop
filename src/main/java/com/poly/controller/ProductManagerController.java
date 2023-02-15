package com.poly.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.dao.DanhMucDAO;
import com.poly.dao.SanPhamDAO;
import com.poly.dao.SanPhamShowDAO;
import com.poly.model.DanhMuc;
import com.poly.model.SanPham;
import com.poly.model.SanPhamShow;
import com.poly.service.ParamService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ProductManagerController {
	@Autowired
	ParamService param;
	@Autowired
	SanPhamDAO spDAO;
	@Autowired
	DanhMucDAO dmDAO;
	@Autowired
	SanPhamShowDAO spsDAO;
	
	@RequestMapping("/admin/product")
	public String MgSP(Model model)
	{
		List<SanPham> sanphams = getListSanPham();
		model.addAttribute("sp",sanphams);
		SanPham sanpham = new SanPham();
		model.addAttribute("sanpham",sanpham);
		
		return "/admin/product";
	}
	
	
	@PostMapping("/admin/product/create")
	public String addSP(@RequestParam(required = true, name = "trangthai") boolean trangthai,
						@RequestParam(required = false, name = "is_delete") boolean is_delete,
						@RequestParam("anh_sp") MultipartFile attach) throws IOException
	{
		// Lưu ảnh sản phẩm
		String fileName;
		try {
			fileName = param.saveImage(attach, "images/product");
		} catch (Exception e) {
			fileName = "imgpro_default.png";
		}
		 
		SanPham sp = new SanPham();
		sp.setTensp(param.getString("tensp", ""));
		sp.setGia(param.getDouble("gia", 0));
		sp.setSltonkho(param.getInt("sltonkho", 0));
		DanhMuc dm = dmDAO.findById(param.getInt("danhmuc", 0)).get();
		sp.setDanhmuc(dm);
		sp.setTrangthai(trangthai);
		sp.set_delete(is_delete);
		sp.setMota(param.getString("mota", ""));
		sp.setAnh(fileName);
		
		spDAO.save(sp);

		return "redirect:/admin/product";
	}
	
	@RequestMapping(value = "/admin/product/edit/{id}", method = RequestMethod.GET, produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public ResponseEntity<SanPhamShow> find(@PathVariable("id") int id)
	{
		// Show thông tin sản phẩm
		SanPhamShow sp = spsDAO.findBy_Id_SP(id);
		try {
			return new ResponseEntity<SanPhamShow>(sp, HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<SanPhamShow>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@PostMapping("/admin/product/update")
	public String update(HttpServletRequest request,
						@RequestParam(required = true, name = "trangthai") boolean trangthai,
						@RequestParam(required = false, name = "is_delete") boolean is_delete,
						@RequestParam("anh_sp") MultipartFile attach) throws IOException
	{
		// Lưu ảnh sản phẩm
		String fileName;
		try {
			fileName = param.saveImage(attach, "images/product");
		} catch (Exception e) {
			fileName = "imgpro_default.png";
		}
		
		int id = Integer.parseInt(request.getParameter("id"));
		SanPham sp = spDAO.findById(id).get();
		sp.setTensp(param.getString("tensp", ""));
		sp.setGia(param.getDouble("gia", 0));
		sp.setSltonkho(param.getInt("sltonkho", 0));
		DanhMuc dm = dmDAO.findById(param.getInt("danhmuc", 0)).get();
		sp.setDanhmuc(dm);
		sp.setTrangthai(trangthai);
		sp.set_delete(is_delete);
		sp.setMota(param.getString("mota", ""));
		sp.setAnh(fileName);
		
		spDAO.save(sp);

		return "redirect:/admin/product";
	}
	
	@GetMapping("/admin/product/delete/{id}")
	public String deleteSP(@PathVariable("id") Integer id)
	{
		spDAO.deleteById(id);
		return "redirect:/admin/product";
	}
	
	public List<SanPham> getListSanPham()
	{
		return spDAO.findAll();
	}

	@ModelAttribute("danhmuc")
	public List<DanhMuc> getListDanhMuc()
	{
		return dmDAO.findAll();
	}
	
}
