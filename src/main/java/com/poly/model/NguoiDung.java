package com.poly.model;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class NguoiDung {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id_kh;
	String hoten;
	@DateTimeFormat(pattern =  "yyyy-MM-dd")
	Date ngaysinh = new Date();
	boolean gioitinh = true;
	String sodt;
	String email;
	String anh;
	String tentk;
	String matkhau;
	String diachi;
	boolean vaitro = false;
	@OneToMany(mappedBy = "nguoidung")
	List<DonDatHang> dondathang;
	@OneToMany(mappedBy = "nguoidung")
	List<DanhGia> danhgia;
}
