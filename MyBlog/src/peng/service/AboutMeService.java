package peng.service;

import org.springframework.transaction.annotation.Transactional;

import peng.dao.AboutMeDao;
import peng.entity.UserInfo;

// @author Εν±όΐΛ
@Transactional
public class AboutMeService {

	private AboutMeDao aboutMeDao;

	public void setAboutMeDao(AboutMeDao aboutMeDao) {
		this.aboutMeDao = aboutMeDao;
	}

	public UserInfo getMyInfo() {
		return aboutMeDao.getMyInfo();
	}

	public void aboutMeUpdate(UserInfo my) {
		aboutMeDao.aboutMeUpdate(my);
	}
}
