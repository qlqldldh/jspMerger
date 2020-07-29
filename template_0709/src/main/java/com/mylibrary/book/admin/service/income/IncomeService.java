package com.mylibrary.book.admin.service.income;

import java.util.List;

import com.mylibrary.book.admin.vo.IncomeVO;

public interface IncomeService {
	
	public List<IncomeVO> showAll();
	public List<IncomeVO> incomeInsert(IncomeVO vo);
	public void incomeUpdate(IncomeVO vo);
	public IncomeVO getIncome(int incomenum);
	public void incomeDelete(int incomenum);
}
