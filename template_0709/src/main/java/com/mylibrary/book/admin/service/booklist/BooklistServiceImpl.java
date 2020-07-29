package com.mylibrary.book.admin.service.booklist;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.code.ssm.api.InvalidateSingleCache;
import com.google.code.ssm.api.ParameterValueKeyProvider;
import com.google.code.ssm.api.ReadThroughAssignCache;
import com.google.code.ssm.api.ReadThroughSingleCache;
import com.google.code.ssm.api.ReturnDataUpdateContent;
import com.google.code.ssm.api.UpdateAssignCache;
import com.mylibrary.book.admin.mapper.BooklistMapper;
import com.mylibrary.book.admin.vo.BooklistVO;

@Service
public class BooklistServiceImpl implements BooklistService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	@ReadThroughAssignCache(namespace="admin", assignedKey="booklist")
	public List<BooklistVO> showList() {
		long beforeTime = System.currentTimeMillis();
		BooklistMapper booklistMapper = sqlSession.getMapper(BooklistMapper.class);
		long afterTime = System.currentTimeMillis();
		System.out.println("booklist : " + (afterTime-beforeTime) + " seconds");
		return booklistMapper.showList();
	}

	@Override
	@ReturnDataUpdateContent
	@UpdateAssignCache(namespace="admin", assignedKey="booklist")
	public List<BooklistVO> insertBooklist(BooklistVO vo) {
		BooklistMapper booklistMapper = sqlSession.getMapper(BooklistMapper.class);
		booklistMapper.insertBooklist(vo);
		return booklistMapper.showList();
	}

	@Override
	@InvalidateSingleCache(namespace="admin")
	public void deleteBooklist(@ParameterValueKeyProvider String bid) {
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
		long beforeTime = System.currentTimeMillis();
		List<BooklistVO> temp = showList();
		for(BooklistVO bv:temp) if(bv.getBid().equals(bid)) return bv;
		long afterTime = System.currentTimeMillis();
		System.out.println("booklist : " + (afterTime-beforeTime) + " seconds");
		return null;
	}

}
