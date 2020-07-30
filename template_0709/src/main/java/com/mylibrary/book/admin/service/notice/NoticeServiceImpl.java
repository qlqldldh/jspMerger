package com.mylibrary.book.admin.service.notice;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.code.ssm.api.InvalidateSingleCache;
import com.google.code.ssm.api.ParameterValueKeyProvider;
import com.google.code.ssm.api.ReadThroughAssignCache;
import com.google.code.ssm.api.ReturnDataUpdateContent;
import com.google.code.ssm.api.UpdateAssignCache;
import com.mylibrary.book.admin.mapper.NoticeMapper;
import com.mylibrary.book.admin.vo.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	@ReadThroughAssignCache(namespace="admin", assignedKey="noticelist")
	public List<NoticeVO> showList() {
		NoticeMapper noticeMapper = sqlSession.getMapper(NoticeMapper.class);
		return noticeMapper.showList();
	}

	@Override
	@ReturnDataUpdateContent
	@UpdateAssignCache(namespace="admin", assignedKey="noticelist")
	public List<NoticeVO> insertNotice(NoticeVO vo) {
		NoticeMapper noticeMapper = sqlSession.getMapper(NoticeMapper.class);
		noticeMapper.insertNotice(vo);
		return noticeMapper.showList();
	}

	@Override
	@InvalidateSingleCache(namespace="admin")
	public void deleteNotice(@ParameterValueKeyProvider String nid) {
		NoticeMapper noticeMapper = sqlSession.getMapper(NoticeMapper.class);
		noticeMapper.deleteNotice(nid);
	}

	@Override
	public void updateNotice(Map<String, String> map) {
		NoticeMapper noticeMapper = sqlSession.getMapper(NoticeMapper.class);
		noticeMapper.updateNotice(map);
	}

	@Override
	public NoticeVO getNotice(String nid) {
		List<NoticeVO> temp = showList();
		for(NoticeVO nv:temp) if(nv.getNid().equals(nid)) return nv;
		return null;
	}

}
