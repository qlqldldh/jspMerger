package com.mylibrary.book.admin.vo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

import com.google.code.ssm.api.CacheKeyMethod;

@Component
public class IncomeVO implements Serializable{

	private int incomenum;
	private String idate;
	private int price;
	private String itype;
	
	@CacheKeyMethod
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
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof IncomeVO) {
			IncomeVO temp = (IncomeVO) obj;
			return this.incomenum==temp.incomenum;
		}
		return false;
	}
	@Override
	public int hashCode() {
		return incomenum+idate.hashCode();
	}
	
	
	
}
