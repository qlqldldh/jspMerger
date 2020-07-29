package com.mylibrary.book.admin.service.booklist;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.admin.mapper.BooklistMapper;
import com.mylibrary.book.admin.vo.BooklistVO;

@Service
public class BooklistServiceImpl implements BooklistService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BooklistVO> showList() {
		BooklistMapper booklistMapper = sqlSession.getMapper(BooklistMapper.class);
		return booklistMapper.showList();
	}

	@Override
	public void insertBooklist(BooklistVO vo) {
		BooklistMapper booklistMapper = sqlSession.getMapper(BooklistMapper.class);
		booklistMapper.insertBooklist(vo);

	}

	@Override
	public void deleteBooklist(String bid) {
		BooklistMapper booklistMapper = sqlSession.getMapper(BooklistMapper.class);
		booklistMapper.deleteBooklist(bid);

	}

	@Override
	public void updateBooklist(Map<String, String> map) {
		BooklistMapper booklistMapper = sqlSession.getMapper(BooklistMapper.class);
		booklistMapper.updateBooklist(map);
	}
	
	@Override
	public BooklistVO getBook(String bid) {
		List<BooklistVO> temp = showList();
		for(BooklistVO bv:temp) if(bv.getBid().equals(bid)) return bv;
		return null;
	}

}
