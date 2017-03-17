package peng.dao;

import java.util.List;
import org.springframework.orm.hibernate5.HibernateTemplate;

import peng.entity.Article;
import peng.entity.Message;
import peng.entity.User;
import peng.entity.UserInfo;

// @author Εν±όΐΛ
public class HomePageDao {

	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public Object[] getUserInfoDao(int id) {
		User user = hibernateTemplate.get(User.class, id);
		UserInfo userInfo = hibernateTemplate.get(UserInfo.class, id);

		List<Message> list = (List) hibernateTemplate
				.find("from Message m where m.userID = ? order by m.messageID desc", id);

		List<Article> list1 = (List) hibernateTemplate.find("from Article a where a.UserID = ?", id);
		Object[] objs = { user, userInfo, list, list1 };
		return objs;
	}

	public boolean doLogin(String name, String pwd) {
		int id;
		try {
			id = Integer.valueOf(name);
		} catch (Exception e) {
			return false;
		}
		User user = hibernateTemplate.get(User.class, id);
		if (user != null) {
			if (user.getUserPWD().equals(pwd)) {
				return true;
			}
		}
		return false;
	}
}
