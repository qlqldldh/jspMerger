package com.mylibrary.book.library.service;

import java.util.List;

import com.mylibrary.book.library.vo.UserNoticeVO;

public interface UserNoticeService {

    List<UserNoticeVO> showList();
    
    public List<UserNoticeVO> boardNotice();

}
