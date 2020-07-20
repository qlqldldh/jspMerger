package com.mylibrary.book.admin.service.bgenerals;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.admin.mapper.BgenMapper;
import com.mylibrary.book.admin.vo.BgenVO;

@Service
public class BgenServiceImpl implements BgenService{
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<BgenVO> showAll() {
		BgenMapper bgenMapper = sqlSession.getMapper(BgenMapper.class);
		return bgenMapper.selectAll();
	}

	@Override
	public BgenVO getBgen(String email) {
		BgenMapper bgenMapper = sqlSession.getMapper(BgenMapper.class);
		
		List<BgenVO> lst = bgenMapper.selectAll();
		for(int i=0;i<lst.size();i++) {
			if(lst.get(i).getEmail().equals(email)) {
				return lst.get(i);
			}
		}
		System.out.println("Error at -- getBgen() -- in BgenService");
		return null;
	}

	@Override
	public void modifyUserInfo(BgenVO vo) {
		sqlSession.getMapper(BgenMapper.class).updateBgen(vo);
		System.out.println("update user info successfully");
	}

	@Override
	public void deleteUserInfo(String email) {
		sqlSession.getMapper(BgenMapper.class).deleteBgen(email);
		System.out.println("delete user info successfully");
	}
	
}
