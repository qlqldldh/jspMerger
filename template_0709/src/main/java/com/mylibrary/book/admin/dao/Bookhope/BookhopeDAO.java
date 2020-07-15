package com.mylibrary.book.admin.dao.Bookhope;

import java.util.List;
import com.mylibrary.book.admin.vo.BookhopeVO;

public interface BookhopeDAO {
	public List<BookhopeVO> selectAll();
	public void delete(String bhid);
}