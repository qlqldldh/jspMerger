package com.mylibrary.book.admin.service.borrowed;

import java.util.List;

import com.mylibrary.book.admin.vo.BorrowedVO;

public interface BorrowedService {

	public List<BorrowedVO> showAll();
	public void borrowedDelete(String rentid);
}
