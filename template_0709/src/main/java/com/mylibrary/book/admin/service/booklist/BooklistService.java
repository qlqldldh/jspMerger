package com.mylibrary.book.admin.service.booklist;

import java.util.List;
import java.util.Map;

import com.mylibrary.book.admin.vo.BooklistVO;

public interface BooklistService {
    public List<BooklistVO> showList();

    public void insertBooklist(BooklistVO vo);

    public void deleteBooklist(String bid);

    public void updateBooklist(Map<String, String> map);

    public BooklistVO getBook(String bid);
}
