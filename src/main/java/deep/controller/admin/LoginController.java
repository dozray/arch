package deep.controller.admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import deep.entity.admin.User;


public class LoginController extends AbstractController {

	private String errView;
	private String successView;
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		User u = getUser(userName,password);
		
		Map<String, Object> model = new HashMap<String,Object>();
		if(u!=null){
			model.put("user", u);
			return new ModelAndView(getSuccessView(),model);
		}
		else{
			model.put("error", "用户名和密码错误");
			return new ModelAndView(getErrView(),model);
		}		
	}
	
	public User getUser(String userName,String password){
		if(userName.equals("Admin") && password.equals("Admin")){
			User u= new User();
			u.setName(userName);
			u.setPassword(password);
			return u;
		}
		return null;
	}

	public String getErrView() {
		return errView;
	}

	public void setErrView(String errView) {
		this.errView = errView;
	}

	public String getSuccessView() {
		return successView;
	}

	public void setSuccessView(String successView) {
		this.successView = successView;
	}
}
