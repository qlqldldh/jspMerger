package com.mylibrary.book.admin.vo;

import org.springframework.stereotype.Component;

@Component
public class ReservedVO {

	private String resid;
	private String resemail;
	private String resbid;
	private String resdate;
	
	public String getResid() {
		return resid;
	}
	public void setResid(String resid) {
		this.resid = resid;
	}
	public String getResemail() {
		return resemail;
	}
	public void setResemail(String resemail) {
		this.resemail = resemail;
	}
	public String getResbid() {
		return resbid;
	}
	public void setResbid(String resbid) {
		this.resbid = resbid;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	@Override
	public String toString() {
		return "ResinfoVO [resid=" + resid + ", resemail=" + resemail + ", resbid=" + resbid + ", resdate=" + resdate
				+ "]";
	}
	
	
	
	
}
