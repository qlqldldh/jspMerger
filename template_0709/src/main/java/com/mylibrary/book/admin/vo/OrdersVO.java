package com.mylibrary.book.admin.vo;

import org.springframework.stereotype.Component;

@Component
public class OrdersVO {

	private int ordernum;
	private String odate;
	private int txnum;
	private String title;
	private int isbn;
	private int price;
	private int unit;
	private int extracost;
	private String descript;
	private int totalcost;
	
	public int getOrdernum() {
		return ordernum;
	}
	public void setOrdernum(int ordernum) {
		this.ordernum = ordernum;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	public int getTxnum() {
		return txnum;
	}
	public void setTxnum(int txnum) {
		this.txnum = txnum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getIsbn() {
		return isbn;
	}
	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getUnit() {
		return unit;
	}
	public void setUnit(int unit) {
		this.unit = unit;
	}
	public int getExtracost() {
		return extracost;
	}
	public void setExtracost(int extracost) {
		this.extracost = extracost;
	}
	public String getDescript() {
		return descript;
	}
	public void setDescript(String descript) {
		this.descript = descript;
	}
	public int getTotalcost() {
		return totalcost;
	}
	public void setTotalcost(int totalcost) {
		this.totalcost = totalcost;
	}
	@Override
	public String toString() {
		return "OrdersVO [ordernum=" + ordernum + ", odate=" + odate + ", txnum=" + txnum + ", title=" + title
				+ ", isbn=" + isbn + ", price=" + price + ", unit=" + unit + ", extracost=" + extracost + ", descript="
				+ descript + ", totalcost=" + totalcost + "]";
	}
	
	
	
}
