package com.mylibrary.book.admin.mapper;

import java.util.List;
import java.util.Map;

import com.mylibrary.book.admin.vo.HrempVO;

public interface HrempMapper {
	public List<HrempVO> selectAll();
	public void insertHR(HrempVO hv);
	public void deleteHR(String tel);
	public void updateHR(Map<String,String> mp);
}
