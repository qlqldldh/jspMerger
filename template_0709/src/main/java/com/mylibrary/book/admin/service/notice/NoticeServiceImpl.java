package com.mylibrary.book.admin.service.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.admin.mapper.NoticeMapper;
import com.mylibrary.book.admin.vo.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<NoticeVO> showList() {
	NoticeMapper noticeMapper=sqlSession.getMapper(NoticeMapper.class);
	return noticeMapper.showList();
    }

    @Override
    public void insertNotice(NoticeVO vo) {
	NoticeMapper noticeMapper=sqlSession.getMapper(NoticeMapper.class);
	noticeMapper.insertNotice(vo);

    }

    @Override
    public void deleteNotice(String nid) {
	NoticeMapper noticeMapper=sqlSession.getMapper(NoticeMapper.class);
	noticeMapper.deleteNotice(nid);

    }


    @Override
    public void updateNotice(Map<String, String> map) {
	NoticeMapper noticeMapper= sqlSession.getMapper(NoticeMapper.class);
	noticeMapper.updateNotice(map);
    }




}
