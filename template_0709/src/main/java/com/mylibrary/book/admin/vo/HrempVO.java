package com.mylibrary.book.admin.vo;

import org.springframework.stereotype.Component;

@Component
public class HrempVO {
	private String name;
	private String tel;
	private String pay;
	private String position;
	private String dname;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	
	@Override
	public String toString() {
		return "HrempVO [name=" + name + ", tel=" + tel + ", pay=" + pay + ", position=" + position + ", dname=" + dname
				+ "]";
	}
	
}
