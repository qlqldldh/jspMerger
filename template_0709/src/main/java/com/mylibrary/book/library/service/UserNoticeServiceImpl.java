package com.mylibrary.book.library.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.library.mapper.UserNoticeMapper;
import com.mylibrary.book.library.vo.UserNoticeVO;

@Service
public class UserNoticeServiceImpl implements UserNoticeService {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<UserNoticeVO> showList() {
	UserNoticeMapper userNoticeMapper=sqlSession.getMapper(UserNoticeMapper.class);
	return userNoticeMapper.showList();
    }

	@Override
	public List<UserNoticeVO> boardNotice() {
		UserNoticeMapper userNoticeMapper=sqlSession.getMapper(UserNoticeMapper.class);
		return userNoticeMapper.boardNotice();
	}

	@Override
	public UserNoticeVO getNoticeInfo(String nid) {
		List<UserNoticeVO> temp = showList();
		
		for(UserNoticeVO unv:temp) if(unv.getNid().equals(nid)) return unv;
		return null;
	}


}
