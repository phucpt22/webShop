package com.poly.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class ChuaThanhToan {
	@Id
	int id;
	String hoten;
	int soluong;
	double tongtien;
	String trangthai;
}
