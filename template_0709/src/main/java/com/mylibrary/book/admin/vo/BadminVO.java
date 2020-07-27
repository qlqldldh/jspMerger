package com.mylibrary.book.admin.vo;

import org.springframework.stereotype.Component;

@Component
public class BadminVO {
	
	private String email;
	private String name;
	private String passwd;
	private String phone;
	private String address;
	private String birth;
	
	private String aemail; // email과 동일 
	private String grp;
	private String pos;
	
	public BadminVO() {}
	
	public BadminVO(String email) {
		this.email=email;
	}
	
	
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
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public String getGrp() {
		return grp;
	}
	public void setGrp(String grp) {
		this.grp = grp;
	}
	public String getPos() {
		return pos;
	}
	public void setPos(String pos) {
		this.pos = pos;
	}
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof BadminVO) {
			BadminVO temp = (BadminVO) obj;
			return this.email.equals(temp.getEmail());
		}
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return email.hashCode();
	}
	
	
}
