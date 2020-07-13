package com.mylibrary.book.admin.dao.hremp;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylibrary.book.admin.mapper.HrempMapper;
import com.mylibrary.book.admin.vo.HrempVO;


@Repository
public class HrempDAOImpl implements HrempDAO{
	@Autowired
	SqlSession sqlSession;
	
	public List<HrempVO> selectAll(){
		HrempMapper hrempMapper = sqlSession.getMapper(HrempMapper.class);
		
		return hrempMapper.selectAll();
	}
}
