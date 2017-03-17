package peng.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.HibernateTemplate;

import peng.entity.Message;

// @author 彭秉浪
public class MessageDao {

	private HibernateTemplate hibernateTemplate;
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public List<Message> getPageMessage(int page) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Message m where m.userID=1 order by m.messageID desc");
		// 设置分页查询的参数
		query.setFirstResult(page * 3);
		query.setMaxResults(3);
		List<Message> list = query.list();
		session.close();
		return list;

	}

	public int getCountMessage() {
		List<Message> list = (List<Message>) hibernateTemplate.find("from Message m where m.userID=1");
		return list.size();
	}

	public boolean addMessage(String s1, String s2) {
		Message m = new Message();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String s3 = sdf.format(new Date());
		m.setUserID(1);
		m.setMessageName(s1);
		m.setContent(s2);
		m.setTime(s3);
		if (hibernateTemplate.save(m) == null) {
			return false;
		} else {
			return true;
		}
	}

	public void messageDele(int id) {
		Message m = hibernateTemplate.get(Message.class, id);
		hibernateTemplate.delete(m);
	}
}
