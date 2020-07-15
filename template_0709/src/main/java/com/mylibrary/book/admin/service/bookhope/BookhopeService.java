package com.mylibrary.book.admin.service.bookhope;

import java.util.List;
import com.mylibrary.book.admin.vo.BookhopeVO;

public interface BookhopeService {
	public List<BookhopeVO> showAll();
	public void deletebh(String bhid);
}
