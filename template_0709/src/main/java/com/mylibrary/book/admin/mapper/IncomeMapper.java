package com.mylibrary.book.admin.mapper;

import java.util.List;

import com.mylibrary.book.admin.vo.IncomeVO;

public interface IncomeMapper {
	
	public List<IncomeVO> selectAll();
	public void incomeInsert(IncomeVO vo);
	public void incomeUpdate(IncomeVO vo);
	public IncomeVO getIncome(int incomenum);
	public void incomeDelete(int incomenum);
}
