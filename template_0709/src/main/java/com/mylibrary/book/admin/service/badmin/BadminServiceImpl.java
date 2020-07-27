package com.mylibrary.book.admin.service.badmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.mylibrary.book.admin.dao.badmin.BadminDAO;
import com.mylibrary.book.admin.vo.BadminVO;

//@Transactional(propagation=Propagation.REQUIRED)
@Service
public class BadminServiceImpl implements BadminService {

	@Autowired
	private BadminDAO badminDAO;
	
	@Override
	public List<BadminVO> showAll() {
		return badminDAO.showAll();
	}
	
	@Override
	public int deleteBadmin1(String email) {
		return badminDAO.deleteBadmin1(email);
	}

	@Override
	public int deleteBadmin2(String email) {
		return badminDAO.deleteBadmin2(email);
	}
	
	@Override
	public void insertBadmin1(BadminVO vo) {
		badminDAO.insertBadmin1(vo);
	}

	@Override
	public void insertBadmin2(BadminVO vo) {
		badminDAO.insertBadmin2(vo);
	}
	
	@Override
	public BadminVO getBadmin(String email) {
		return badminDAO.getBadmin(email);
	}

	@Override
	public int updateBadmin1(BadminVO vo) {
		return badminDAO.updateBadmin1(vo);
	}

	@Override
	public int updateBadmin2(BadminVO vo) {
		return badminDAO.updateBadmin2(vo);
	}
	
//
//	@Override
//	public BadminVO getBadmin(int ordernum) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public void insertBadmin(BadminVO vo) {
//		badminDAO.insertBadmin1(vo);
//		badminDAO.insertBadmin2(vo);
//	}
//
//	@Override
//	public int updateBadmin(BadminVO vo) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//
//	@Override
//	public int deleteBadmin(BadminVO vo) {
//		// TODO Auto-generated method stub
//		return 0;
//	}

}
