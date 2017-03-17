package peng.dao;

import org.springframework.orm.hibernate5.HibernateTemplate;

import peng.entity.UserInfo;

// @author Εν±όΐΛ
public class AboutMeDao {

	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public UserInfo getMyInfo() {
		return hibernateTemplate.get(UserInfo.class, 1);
	}

	public void aboutMeUpdate(UserInfo my) {
		hibernateTemplate.update(my);
	}
}
