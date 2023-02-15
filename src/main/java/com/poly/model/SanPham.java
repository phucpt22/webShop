package com.poly.model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class SanPham {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id_sp;
	String tensp;
	boolean trangthai = true;
	String anh;
	double gia;
	int sltonkho;
	String mota;
	boolean is_delete = false;
	@ManyToOne
	@JoinColumn(name = "id_dm")
	DanhMuc danhmuc;
	@OneToMany(mappedBy = "sanpham")
	List<DonDatChiTiet> dondatchitiet;
	@OneToMany(mappedBy = "sanpham")
	List<DanhGia> danhgia;
}
