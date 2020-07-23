package com.mylibrary.book.admin.service.hremp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//import com.mylibrary.book.admin.dao.hremp.HrempDAO;
import com.mylibrary.book.admin.mapper.HrempMapper;
import com.mylibrary.book.admin.vo.HrempVO;

@Service
public class HrempServiceImpl implements HrempService{
	
	@Autowired
	SqlSession sqlSession;
	
	public List<HrempVO> showAll(){
		HrempMapper hrempMapper = sqlSession.getMapper(HrempMapper.class);
		return hrempMapper.selectAll();
	}
	
	public void insertHR(HrempVO hv) {
		HrempMapper hrempMapper = sqlSession.getMapper(HrempMapper.class);
		hrempMapper.insertHR(hv);
	}
	
	public void deleteHR(String tel) {
		HrempMapper hrempMapper = sqlSession.getMapper(HrempMapper.class);
		hrempMapper.deleteHR(tel);
	}
	
	public void updateHR(Map<String,String> mp) {
		HrempMapper hrempMapper = sqlSession.getMapper(HrempMapper.class);
		hrempMapper.updateHR(mp);
	}
}
