package com.mylibrary.book.user.dao;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class UserDAOImpl implements UserDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public int insertUser(Map<String, String> map) {
		return sqlSession.insert("user.insertUser", map);
	}
	@Override
	public int updatePassword(Map<String, String> map) {
		return sqlSession.update("user.updatePassword", map);
	}
	@Override
	public int updateUser(Map<String, String> map) {
		return sqlSession.update("user.updateUser", map);
	}

	@Override
	public Map<String, Object> selectUser(String email) {
		return sqlSession.selectOne("user.selectUser", email);
	}
	@Override
	public Map<String, Object> selectUserNoAs(String email) {
		return sqlSession.selectOne("user.selectUserNoAs", email);
	}

}
