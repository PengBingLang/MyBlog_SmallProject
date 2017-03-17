package peng.action;

import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import peng.service.HomePageService;

// @author 彭秉浪
public class HomePageAction extends ActionSupport {

	private HomePageService homePageService;
	private int uid;

	public void setUid(int uid) {
		this.uid = uid;
	}

	public void setHomePageService(HomePageService homePageService) {
		this.homePageService = homePageService;
	}

	@Override
	// http://127.0.0.1:8080/MyBlog/homePage.action?uid=1
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		if (this.uid == 0) {
			this.uid = 1;
		}
		String[] ss = homePageService.getUserInfoService(uid);
		session.setAttribute("name1", ss[0]);
		session.setAttribute("img1", ss[1]);
		session.setAttribute("info1", ss[2]);

		session.setAttribute("info2", ss[3]);
		session.setAttribute("info3", ss[4]);

		session.setAttribute("a1", ss[5]);
		session.setAttribute("a2", ss[6]);
		session.setAttribute("a3", ss[7]);
		session.setAttribute("a4", ss[8]);
		session.setAttribute("a5", ss[9]);
		session.setAttribute("a6", ss[10]);
		session.setAttribute("a7", ss[11]);
		session.setAttribute("a8", ss[12]);
		session.setAttribute("a9", ss[13]);
		return SUCCESS;
	}

	/*--------------------以下代码实现登陆验证--------------------*/
	private String name;
	private String pwd;
	private String loginMsg;

	public String getLoginMsg() {
		return loginMsg;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	/**
	 * 登陆验证
	 * 
	 * @return
	 * @author 彭秉浪
	 */
	public String doLogin() {
		if (homePageService.doLogin(name, pwd)) {
			ServletActionContext.getRequest().getSession().setAttribute("loginInfo", "true");
			return SUCCESS;
		} else {
			this.loginMsg = "用户名或密码错误！";
			return "fail";
		}
	}
	/*--------------------以下代码实现退出登陆--------------------*/

	/**
	 * 退出登陆
	 * 
	 * @return
	 * @author 彭秉浪
	 */
	public String doLogout() {
		HttpSession session = ServletActionContext.getRequest().getSession(false);// 防止创建Session
		session.invalidate();// 清除Session中的所有内容
		return SUCCESS;
	}
}
