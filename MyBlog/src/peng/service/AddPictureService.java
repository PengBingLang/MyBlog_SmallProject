package peng.service;

import org.springframework.transaction.annotation.Transactional;

import peng.dao.AddPictureDao;

// @author Εν±όΐΛ
@Transactional
public class AddPictureService {

	private AddPictureDao addPictureDao;

	public void setAddPictureDao(AddPictureDao addPictureDao) {
		this.addPictureDao = addPictureDao;
	}

	public int getPictureName() {
		int i = Integer.valueOf(addPictureDao.getPictureName());
		i = i + 1;
		if (i > 13) {
			i = 1;
		}
		return i;
	}

	public void setPictureName(int i) {
		addPictureDao.setPictureName(i);
	}
}
