package com.mylibrary.book.admin.dao.badmin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylibrary.book.admin.mapper.BadminMapper;
import com.mylibrary.book.admin.vo.BadminVO;

@Repository
public class BadminDAOImpl implements BadminDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int deleteBadmin1(String email) {
		BadminMapper badminMapper = sqlSession.getMapper(BadminMapper.class);
		return badminMapper.deleteBadmin1(email);
	}

	@Override
	public int deleteBadmin2(String email) {
		BadminMapper badminMapper = sqlSession.getMapper(BadminMapper.class);
		return badminMapper.deleteBadmin2(email);
	}

	@Override
	public List<BadminVO> showAll() {
		BadminMapper badminMapper = sqlSession.getMapper(BadminMapper.class);
		return badminMapper.showAll();
	}


	@Override
	public void insertBadmin1(BadminVO vo) {
		BadminMapper badminMapper = sqlSession.getMapper(BadminMapper.class);
		badminMapper.insertBadmin1(vo);
	}

	@Override
	public void insertBadmin2(BadminVO vo) {
		BadminMapper badminMapper = sqlSession.getMapper(BadminMapper.class);
		badminMapper.insertBadmin2(vo);
		
	}
	
	@Override
	public BadminVO getBadmin(String email) {
		BadminMapper badminMapper = sqlSession.getMapper(BadminMapper.class);
		return badminMapper.getBadmin(email);
	}
	
	@Override
	public int updateBadmin1(BadminVO vo) {
		BadminMapper badminMapper = sqlSession.getMapper(BadminMapper.class);
		return badminMapper.updateBadmin1(vo);
	}

	@Override
	public int updateBadmin2(BadminVO vo) {
		BadminMapper badminMapper = sqlSession.getMapper(BadminMapper.class);
		return badminMapper.updateBadmin2(vo);
	}

}
