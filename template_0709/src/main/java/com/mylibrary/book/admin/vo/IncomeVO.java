package com.mylibrary.book.admin.vo;

import org.springframework.stereotype.Component;

@Component
public class IncomeVO {

	private int incomenum;
	private String idate;
	private int price;
	private String itype;
	
	
	public int getIncomenum() {
		return incomenum;
	}
	public void setIncomenum(int incomenum) {
		this.incomenum = incomenum;
	}
	public String getIdate() {
		return idate;
	}
	public void setIdate(String idate) {
		this.idate = idate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getItype() {
		return itype;
	}
	public void setItype(String itype) {
		this.itype = itype;
	}
	
	@Override
	public String toString() {
		return "IncomeVO [incomenum=" + incomenum + ", idate=" + idate + ", price=" + price + ", itype=" + itype + "]";
	}
	
}
