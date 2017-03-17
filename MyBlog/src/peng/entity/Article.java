package peng.entity;

// @author Εν±όΐΛ
public class Article {

	private Integer ArticleID;
	private Integer UserID;
	private String title;
	private String content;
	private String author;
	private String type;
	private String labal;
	private String time;
	private String image;
	private Integer scan;
	private String comment;

	public Integer getArticleID() {
		return ArticleID;
	}

	public void setArticleID(Integer articleID) {
		ArticleID = articleID;
	}

	public Integer getUserID() {
		return UserID;
	}

	public void setUserID(Integer userID) {
		UserID = userID;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLabal() {
		return labal;
	}

	public void setLabal(String labal) {
		this.labal = labal;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getScan() {
		return scan;
	}

	public void setScan(Integer scan) {
		this.scan = scan;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "Article [ArticleID=" + ArticleID + ", UserID=" + UserID + ", title=" + title + ", content=" + content
				+ ", author=" + author + ", type=" + type + ", labal=" + labal + ", time=" + time + ", image=" + image
				+ ", scan=" + scan + ", comment=" + comment + "]";
	}
}
