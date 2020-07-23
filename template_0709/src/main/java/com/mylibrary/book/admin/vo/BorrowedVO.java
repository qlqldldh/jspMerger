package com.mylibrary.book.admin.vo;

import org.springframework.stereotype.Component;

@Component
public class BorrowedVO {
	
	private String rentid, renemail, renbid, isdate, exdate, retdate, bldate;
	private int isExpanded;

	public String getRentid() {
		return rentid;
	}

	public void setRentid(String rentid) {
		this.rentid = rentid;
	}

	public String getRenemail() {
		return renemail;
	}

	public void setRenemail(String renemail) {
		this.renemail = renemail;
	}

	public String getRenbid() {
		return renbid;
	}

	public void setRenbid(String renbid) {
		this.renbid = renbid;
	}

	public String getIsdate() {
		return isdate;
	}

	public void setIsdate(String isdate) {
		this.isdate = isdate;
	}

	public String getExdate() {
		return exdate;
	}

	public void setExdate(String exdate) {
		this.exdate = exdate;
	}

	public String getRetdate() {
		return retdate;
	}

	public void setRetdate(String retdate) {
		this.retdate = retdate;
	}

	public String getBldate() {
		return bldate;
	}

	public void setBldate(String bldate) {
		this.bldate = bldate;
	}

	public int getIsExpanded() {
		return isExpanded;
	}

	public void setIsExpanded(int isExpanded) {
		this.isExpanded = isExpanded;
	}


	

}