package com.poly.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "feedback")
public class DanhGia {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id_fb;
	float danhgia;
	String noidung;
	@Temporal(TemporalType.DATE)
	@Column(name = "ngaydang")
	Date ngaydang = new Date();
	@ManyToOne
	@JoinColumn(name = "id_kh")
	NguoiDung nguoidung;
	@ManyToOne
	@JoinColumn(name = "id_sp")
	SanPham sanpham;
}
