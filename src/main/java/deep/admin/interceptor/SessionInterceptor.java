package deep.admin.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import deep.admin.bean.User;

public class SessionInterceptor implements HandlerInterceptor,InitializingBean{

	// Called by container on app start.
	public void afterPropertiesSet() throws Exception {
		System.out.println("======== Init SessionIntercdptor ========");
	}

	/**
	 * 在Controller 方法前进行拦截
	 * 
	 * 如果返回false 的执行序
	 * 		在拦截器链中从当前拦截器往回执行所有拦截器的afterCompletion方法，再退出拦截器链。 
	 * 如果返回true 的执行序
	 * 		1.执行下一下拦截器，直到所有的拦截器都执行完毕。
	 * 		2.再运行被拦截的Controller
	 * 		3.然后进入到拦截器链，从最后一个拦截器往回运行所有拦截器的postHandle方法
	 * 		4.接着依旧是从最后一个拦截器往回运行所有拦截器的afterCompletion方法
	 */
	public boolean preHandle(HttpServletRequest req,
			HttpServletResponse res, Object handler) throws Exception {
		User user = (User)req.getSession().getAttribute("ray_usr");
		if(user == null){
			System.out.println("Interceptor got a null value of the ray_user");
			res.sendRedirect("/");
			return false;
		}		
		System.out.println("Interceptor got user "+user.getUserName());
		return true;
	}

	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}	

}
