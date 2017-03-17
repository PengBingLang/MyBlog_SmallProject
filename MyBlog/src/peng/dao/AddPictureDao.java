package peng.dao;

import org.springframework.orm.hibernate5.HibernateTemplate;

import peng.entity.Picture;

// @author Εν±όΐΛ
public class AddPictureDao {

	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public String getPictureName() {
		Picture p = hibernateTemplate.get(Picture.class, 1);
		return p.getImage();
	}

	public void setPictureName(int i) {
		Picture p = hibernateTemplate.get(Picture.class, 1);
		p.setImage(i + "");
		hibernateTemplate.update(p);
	}
}
