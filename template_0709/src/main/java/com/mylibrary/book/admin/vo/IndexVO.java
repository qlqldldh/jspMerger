package com.mylibrary.book.admin.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class IndexVO {

	private int bookNum;
	private Date currentDate;
	
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	public Date getCurrentDate() {
		return currentDate;
	}
	public void setCurrentDate(Date currentDate) {
		this.currentDate = currentDate;
	}
	@Override
	public String toString() {
		return "IndexVO [bookNum=" + bookNum + ", currentDate=" + currentDate + "]";
	}
}
