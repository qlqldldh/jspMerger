package com.mylibrary.book.admin.mapper;

import java.util.List;
import com.mylibrary.book.admin.vo.BookhopeVO;

public interface BookhopeMapper {
	public List<BookhopeVO> selectAll();
	public void deletebh(String bhid);
}
