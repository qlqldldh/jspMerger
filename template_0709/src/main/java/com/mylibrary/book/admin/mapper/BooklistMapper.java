package com.mylibrary.book.admin.mapper;

import java.util.List;
import java.util.Map;

import com.mylibrary.book.admin.vo.BooklistVO;

public interface BooklistMapper {
    public List<BooklistVO> showList();

    public void insertBooklist(BooklistVO vo);

    public void deleteBooklist(String bid);

    public void updateBooklist(Map<String, String> map);
}
