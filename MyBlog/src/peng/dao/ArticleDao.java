package peng.dao;

import java.util.List;
import org.springframework.orm.hibernate5.HibernateTemplate;

import peng.entity.Article;

// @author Εν±όΐΛ
public class ArticleDao {

	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public List<Article> getAllArticle() {
		return (List<Article>) hibernateTemplate.find("from Article");
	}

	public Article getOneArticle(int id) {
		return hibernateTemplate.get(Article.class, id);
	}

	public void articleUpdate(Article a) {
		hibernateTemplate.update(a);
	}

	public void articleInsert(Article a) {
		hibernateTemplate.save(a);
	}

	public void articleDelete(int id) {
		Article temp = hibernateTemplate.get(Article.class, id);
		hibernateTemplate.delete(temp);
	}
}
