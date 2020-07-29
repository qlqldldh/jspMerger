package com.mylibrary.book.admin.service.notice;

import java.util.List;
import java.util.Map;

import com.mylibrary.book.admin.vo.NoticeVO;

public interface NoticeService {

    public List<NoticeVO> showList();

    public void insertNotice(NoticeVO vo);

    public void deleteNotice(String nid);

    public void updateNotice(Map<String, String> map);

    public NoticeVO getNotice(String nid);
}