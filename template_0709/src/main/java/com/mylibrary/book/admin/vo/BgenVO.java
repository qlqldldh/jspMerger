package com.mylibrary.book.admin.vo;

import com.google.code.ssm.api.CacheKeyMethod;

public class BgenVO {
	private String email;
	private String name;
	private String passwd;
	private String phone;
	private String address;
	private String birth;
	
	@CacheKeyMethod
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	@Override
	public String toString() {
		return "BgenVO [email=" + email + ", name=" + name + ", passwd=" + passwd + ", phone=" + phone + ", address="
				+ address + ", birth=" + birth + "]";
	}
	
}
