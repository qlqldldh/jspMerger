package com.mylibrary.book.admin.service.bookhope;

import java.util.List;
import com.mylibrary.book.admin.vo.BookhopeVO;

public interface BookhopeService {
	public List<BookhopeVO> showAll();
	public void deletebh(String bhid);
	public void insertbh(String btitle, String bauthor, String bpublisher, String bhid) throws Exception;
}