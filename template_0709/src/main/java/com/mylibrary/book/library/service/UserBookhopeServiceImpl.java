package com.mylibrary.book.library.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.admin.vo.BookhopeVO;
import com.mylibrary.book.library.mapper.UserBookhopeMapper;

@Service
public class UserBookhopeServiceImpl implements UserBookhopeService {

    @Autowired
    SqlSession sqlSession;

    @Override
    public void bookhopeInsert(BookhopeVO vo) {
	UserBookhopeMapper userBookhopeMapper = sqlSession.getMapper(UserBookhopeMapper.class);
	userBookhopeMapper.bookhopeInsert(vo);

    }

}
