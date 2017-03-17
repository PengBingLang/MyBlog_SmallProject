package peng.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import peng.dao.ArticleDao;
import peng.entity.Article;

// @author 彭秉浪
@Transactional
public class ArticleService {

	private ArticleDao articleDao;

	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}

	public List<Article> getAllArticle() {
		return articleDao.getAllArticle();
	}

	public Article getOneArticle(int id) {
		return articleDao.getOneArticle(id);
	}

	public void articleUpdate(Article a) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(new Date());
		if (a.getArticleID() == null) {// 添加新文章
			a.setUserID(1);
			a.setTime(date);
			articleDao.articleInsert(a);
		} else {// 修改
			Article art = getOneArticle(a.getArticleID());
			art.setTitle(a.getTitle());
			art.setAuthor(a.getAuthor());
			art.setType(a.getType());
			art.setTime(date);
			art.setContent(a.getContent());
			articleDao.articleUpdate(art);
		}
	}

	public void articleDelete(int id) {
		articleDao.articleDelete(id);
	}
}
