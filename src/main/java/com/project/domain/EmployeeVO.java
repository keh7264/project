package com.project.domain;

import java.util.Date;

public class EmployeeVO {
	private Integer id;
	private String name_ko;
	private String name_en;
	private String phone;
	private String email;
	private String address;
	private Date reg_date;

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName_ko() {
		return name_ko;
	}

	public void setName_ko(String name_ko) {
		this.name_ko = name_ko;
	}

	public String getName_en() {
		return name_en;
	}

	public void setName_en(String name_en) {
		this.name_en = name_en;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "EmployeeVO[id: " + id + ", name_ko: " + name_ko + ", name_en: "
				+ name_en + ", phone:" + phone + ", email: " + email
				+ ", address: " + address + ", reg_date: " + reg_date + "]"+"\n";
	}
}
