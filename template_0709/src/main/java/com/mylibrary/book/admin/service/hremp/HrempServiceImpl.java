package com.mylibrary.book.admin.service.hremp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.admin.dao.hremp.HrempDAO;
import com.mylibrary.book.admin.vo.HrempVO;

@Service
public class HrempServiceImpl implements HrempService{
	@Autowired
	HrempDAO hrempDAO;
	
	public List<HrempVO> showAll(){
		return hrempDAO.selectAll();
	}
}
