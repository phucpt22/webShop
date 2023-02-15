package com.poly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Service
public class CookieService {
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;

	/**
	 * Đọc cookie từ request
	 * 
	 * @param name tên cookie cần đọc
	 * @return đối tượng cookie đọc được hoặc null nếu không tồn tại
	 */
	public Cookie get(String name) {
		Cookie[] cookie = request.getCookies();
		if (cookie != null) {
			for (Cookie ck : cookie) {
				if (ck.getName().equalsIgnoreCase(name)) {
					return ck;
				}
			}
		}
		return null;
	}

	/**
	 * Đọc giá trị của cookie từ request
	 * 
	 * @param name tên cookie cần đọc
	 * @return chuỗi giá trị đọc được hoặc rỗng nếu không tồn tại
	 */
	public String getValue(String name) {
		for (Cookie i : request.getCookies()) {
			if (i.getName().equals(name)) {
				return i.getValue();
			}
		}
		return "";
	}

	/**
	 * Tạo và gửi cookie về client
	 * 
	 * @param name  tên cookie
	 * @param value giá trị cookie
	 * @param hours thời hạn (giờ)
	 * @return đối tượng cookie đã tạo
	 */
	public Cookie add(String name, String value, int hours) {
		Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(hours * 60 * 60);
		cookie.setPath("/");
		response.addCookie(cookie); 
		return cookie;
	}

	/**
	 * Xóa cookie khỏi client
	 * @param name tên cookie cần xóa
	 */
	public void remove(String name) {
		Cookie cookies = new Cookie(name, "");
		cookies.setMaxAge(0);
		cookies.setPath("/");
		response.addCookie(cookies);
	}
}
