package peng.service;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;

import peng.dao.HomePageDao;
import peng.entity.Article;
import peng.entity.Message;
import peng.entity.User;
import peng.entity.UserInfo;

// @author Åí±üÀË
@Transactional
public class HomePageService {

	private HomePageDao homePageDao;

	public void setHomePageDao(HomePageDao homePageDao) {
		this.homePageDao = homePageDao;
	}

	public String[] getUserInfoService(int id) {
		Object[] objs = homePageDao.getUserInfoDao(id);
		User user = (User) objs[0];
		UserInfo userInfo = (UserInfo) objs[1];
		StringBuffer sb = new StringBuffer(userInfo.getSelfIntroduction());
		if (sb.length() > 72) {
			sb = new StringBuffer(sb.substring(0, 70));
			sb.append("...");
		}

		List<Message> list = (List<Message>) objs[2];
		String s1 = "ÔÝÎÞÁôÑÔ";
		String s2 = "ÔÝÎÞÁôÑÔ";
		if (list != null) {
			if (list.size() == 1) {
				s1 = list.get(0).getContent();
			} else if (list.size() > 1) {
				s1 = list.get(0).getContent();
				s2 = list.get(1).getContent();
			}
		}

		List<Article> list2 = (List<Article>) objs[3];
		String[] a1 = { "images/noa.jpg", "ÔÝÎ´·¢±íÎÄÕÂ", "" };
		String[] a2 = { "images/noa.jpg", "ÔÝÎ´·¢±íÎÄÕÂ", "" };
		String[] a3 = { "images/noa.jpg", "ÔÝÎ´·¢±íÎÄÕÂ", "" };
		if (list2 != null) {
			if (list2.size() > 0) {
				a1[0] = list2.get(0).getImage();
				a1[1] = list2.get(0).getTitle();
				a1[2] = list2.get(0).getContent();
			}
			if (list2.size() > 1) {
				a2[0] = list2.get(1).getImage();
				a2[1] = list2.get(1).getTitle();
				a2[2] = list2.get(1).getContent();
			}
			if (list2.size() > 2) {
				a3[0] = list2.get(2).getImage();
				a3[1] = list2.get(2).getTitle();
				a3[2] = list2.get(2).getContent();
			}
		}
		String[] ss = { user.getUserName(), userInfo.getImage(), sb.toString(), s1, s2, a1[0], a1[1], a1[2], a2[0],
				a2[1], a2[2], a3[0], a3[1], a3[2] };
		return ss;
	}

	public boolean doLogin(String name, String pwd) {
		return homePageDao.doLogin(name, pwd);

	}
}
