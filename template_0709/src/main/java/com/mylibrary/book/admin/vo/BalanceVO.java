package com.mylibrary.book.admin.vo;

public class BalanceVO {
	private String bdate;
	private int available;
	private int cost;
	
	public BalanceVO() {}
	
	public BalanceVO(String bdate, int available, int cost) {
		this.bdate=bdate;
		this.available=available;
		this.cost=cost;
	}
	
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public int getAvailable() {
		return available;
	}
	public void setAvailable(int available) {
		this.available = available;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	
	@Override
	public String toString() {
		return "BalanceVO [bdate=" + bdate + ", available=" + available + ", cost=" + cost + "]";
	}
	
}
