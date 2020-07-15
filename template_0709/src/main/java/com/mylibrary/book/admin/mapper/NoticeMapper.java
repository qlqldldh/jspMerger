package com.mylibrary.book.admin.mapper;


import java.util.List;
import java.util.Map;

import com.mylibrary.book.admin.vo.NoticeVO;

public interface NoticeMapper {

    public List<NoticeVO> showList();

    public void insertNotice(NoticeVO vo);

    public void deleteNotice(String nid);

    public void updateNotice(Map<String, String> map);

}
