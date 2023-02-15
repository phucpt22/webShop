package com.poly.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "dondatchitiet")
public class DonDatChiTiet {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id_ddct;
	int soluong;
	double tongtien;
	@ManyToOne
	@JoinColumn(name = "id_ddh")
	DonDatHang dondathang;
	@ManyToOne
	@JoinColumn(name = "id_sp")
	SanPham sanpham;
}
