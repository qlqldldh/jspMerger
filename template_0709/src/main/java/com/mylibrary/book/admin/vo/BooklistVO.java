package com.mylibrary.book.admin.vo;

import org.springframework.stereotype.Component;

@Component
public class BooklistVO {

    private String bid;
    private String title;
    private String author;
    private String publisher;
    private String pubdate;
    private String isbn;
    private String bcategory;
    private String blocation;
    private int bcount;
    private String descrip;
    private int bpages;
    private int willdel;
    private String img;
    
    
    public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getBid() {
        return bid;
    }
    public void setBid(String bid) {
        this.bid = bid;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getAuthor() {
        return author;
    }
    public void setAuthor(String author) {
        this.author = author;
    }
    public String getPublisher() {
        return publisher;
    }
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
    public String getPubdate() {
        return pubdate;
    }
    public void setPubdate(String pubdate) {
        this.pubdate = pubdate;
    }
    public String getIsbn() {
        return isbn;
    }
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
    public String getBcategory() {
        return bcategory;
    }
    public void setBcategory(String bcategory) {
        this.bcategory = bcategory;
    }
    public String getBlocation() {
        return blocation;
    }
    public void setBlocation(String blocation) {
        this.blocation = blocation;
    }
    public int getBcount() {
        return bcount;
    }
    public void setBcount(int bcount) {
        this.bcount = bcount;
    }
    public String getDescrip() {
        return descrip;
    }
    public void setDescrip(String descrip) {
        this.descrip = descrip;
    }
    public int getBpages() {
        return bpages;
    }
    public void setBpages(int bpages) {
        this.bpages = bpages;
    }
    public int getWilldel() {
        return willdel;
    }
    public void setWilldel(int willdel) {
        this.willdel = willdel;
    }
    @Override
    public String toString() {
	return "BooklistVO [bid=" + bid + ", title=" + title + ", author=" + author + ", publisher=" + publisher
		+ ", pubdate=" + pubdate + ", isbn=" + isbn + ", bcategory=" + bcategory + ", blocation=" + blocation
		+ ", bcount=" + bcount + ", descrip=" + descrip + ", bpages=" + bpages + ", willdel=" + willdel + "]";
    }

  
}
