package peng.filter;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

// @author 彭秉浪
public class LoginFilter extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation arg0) throws Exception {
		String s = (String) ServletActionContext.getRequest().getSession().getAttribute("loginInfo");
		if ("true".equals(s)) {
			// 登陆，做类似于“放行”的操作
			return arg0.invoke();
		} else {
			// 未登陆，返回登陆页面
			return "false";
		}
	}

}
