package com.poly.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class SanPhamShow {
	@Id
	int id_sp;
	String tensp;
	boolean trangthai;
	String anh;
	double gia;
	int sltonkho;
	String mota;
	boolean is_delete;
	int id_dm;
}
