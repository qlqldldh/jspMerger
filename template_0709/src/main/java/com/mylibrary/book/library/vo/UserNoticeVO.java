package com.mylibrary.book.library.vo;

import org.springframework.stereotype.Component;

@Component
public class UserNoticeVO {

    private String nid;
    private String uldate;
    private String title;
    private String ncontents;
    
    public String getNid() {
        return nid;
    }
    public void setNid(String nid) {
        this.nid = nid;
    }
    public String getUldate() {
        return uldate;
    }
    public void setUldate(String uldate) {
        this.uldate = uldate;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getNcontents() {
        return ncontents;
    }
    public void setNcontents(String ncontents) {
        this.ncontents = ncontents;
    }

   

}
