package com.mylibrary.book.admin.vo;

public class BookhopeVO {

	String bhid,uemail,btitle,bauthor,bpublisher,comments;

	public String getBhid() {
		return bhid;
	}

	public void setBhid(String bhid) {
		this.bhid = bhid;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBauthor() {
		return bauthor;
	}

	public void setBauthor(String bauthor) {
		this.bauthor = bauthor;
	}

	public String getBpublisher() {
		return bpublisher;
	}

	public void setBpublisher(String bpublisher) {
		this.bpublisher = bpublisher;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	@Override
	public String toString() {
		return "BookhopeVO [bhid=" + bhid + ", uemail=" + uemail + ", btitle=" + btitle + ", bauthor=" + bauthor
				+ ", bpublisher=" + bpublisher + ", comments=" + comments + "]";
	}
}