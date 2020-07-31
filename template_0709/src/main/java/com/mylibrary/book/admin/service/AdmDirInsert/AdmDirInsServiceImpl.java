package com.mylibrary.book.admin.service.AdmDirInsert;

import org.springframework.stereotype.Service;

@Service("AdmDirIns")
public class AdmDirInsServiceImpl implements AdmDirInsService {

	@Override
	public boolean AdmDirIns(String title, String author, String publisher, String isbn13) throws Exception {
		System.out.println("AdmDirIns왔음");
		/*if (AladdinOpenAPI.addtolist(title, author, publisher, isbn13) == true) {
			return true;
		} else {
			return false;
		}*/
		return AladdinOpenAPI.addtolist(title, author, publisher, isbn13);
	}
}