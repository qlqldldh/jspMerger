package com.mylibrary.book.admin.service.hremp;

import java.util.List;
import java.util.Map;

import com.mylibrary.book.admin.vo.HrempVO;

public interface HrempService {
	public List<HrempVO> showAll();
	public void insertHR(HrempVO hv);
	public void deleteHR(String tel);
	public void updateHR(Map<String,String> mp);
	public HrempVO getHremp(String tel);
}
