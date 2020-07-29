package com.mylibrary.book.admin.service.badmin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.admin.dao.badmin.BadminDAO;
import com.mylibrary.book.admin.vo.BadminVO;
import com.mylibrary.book.user.dao.UserDAO;
import com.mylibrary.book.user.service.ShaEncoder;

//@Transactional(propagation=Propagation.REQUIRED)
@Service
public class BadminServiceImpl implements BadminService {

	@Autowired
	private BadminDAO badminDAO;
	
	@Inject
	ShaEncoder shaEncoder;
	
	@Inject
	UserDAO userDao;
	
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
		String dbpw = shaEncoder.saltEncoding(vo.getPasswd(), vo.getEmail());
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", vo.getEmail());
		map.put("passwd", dbpw);
		map.put("name", vo.getName());
		map.put("birth", vo.getBirth());
		map.put("phone", vo.getPhone());
		map.put("address", vo.getAddress());
		map.put("authority", "ROLE_ADMIN");
		// affected rows, 영향을 받은 행의 수가 리턴됨
		int result = userDao.insertUser(map);
		System.out.println(result+" user inserted");
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
		return badminDAO.updateBadmin1(vo);
	}

}
