package peng.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import peng.entity.Article;
import peng.service.ArticleService;

// @author 彭秉浪
public class ArticleAction extends ActionSupport implements ModelDriven<Article> {

	private ArticleService articleService;
	private List<Article> list;
	private int id;
	private Article article;

	public Article getArticle() {
		return article;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Article> getList() {
		return list;
	}

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	@Override
	public String execute() throws Exception {
		this.list = articleService.getAllArticle();
		return SUCCESS;
	}

	/**
	 * 得到一篇文章
	 * 
	 * @return
	 * @author 彭秉浪
	 */
	public String getOneArticle() {
		this.article = articleService.getOneArticle(this.id);
		return "OneArticle";
	}

	/*--------------------以下代码实现文章修改和新增--------------------*/
	private Integer typeId;
	private Article newArticle = new Article();// 模型封装

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	@Override
	public Article getModel() {
		return newArticle;
	}

	/**
	 * 进入编辑页面
	 * 
	 * @return
	 * @author 彭秉浪
	 */
	public String articleUpdatePage() {
		if (typeId > 0) {
			// 进入一篇的文章编辑页面
			this.article = articleService.getOneArticle(typeId);
		} else {
			// 进入发表新文章的页面
			this.article = null;
		}
		return SUCCESS;
	}

	public String articleUpdate() {
		articleService.articleUpdate(this.newArticle);
		return "Update";
	}

	/*--------------------以下代码实现文章删除--------------------*/
	private int delID;

	public void setDelID(int delID) {
		this.delID = delID;
	}

	public String articleDelete() {
		if (delID < 1) {
			return "Delete";
		}
		articleService.articleDelete(delID);
		return "Delete";
	}

}
