package com.poly.model;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class DonDatHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id_ddh;
	@Temporal(TemporalType.DATE)
	@Column(name = "ngaydat")
	Date ngaydat = new Date();
	String ghichukh;
	double tongtien;
	String trangthai;
	String sodt;
	String diachi;
	@ManyToOne
	@JoinColumn(name = "id_kh")
	NguoiDung nguoidung;
	@OneToMany(mappedBy = "dondathang")
	List<DonDatChiTiet> dondatchitiet;
}
