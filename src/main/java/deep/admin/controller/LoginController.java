package deep.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import deep.admin.bean.User;

@Controller
public class LoginController {
	@RequestMapping("/entry")
	public String login(User user,HttpSession session,HttpServletRequest req){
		String code = (String)session.getAttribute("vCode");
		String xcode = (String)session.getAttribute("validateCode");
		String submitCode = WebUtils.getCleanParam(req, "vCode");
		
		if(StringUtils.isEmpty(submitCode)|| !StringUtils.equals(code, submitCode.toLowerCase()))
		{
			System.out.println("code"+code+"\r\nsubmitCode"+submitCode+"\r\nxcode"+xcode);
			return "redirect:/";
		}
		
		//获取当前的Subject
		Subject curUser = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(user.getName(),user.getPassword());
		token.setRememberMe(true);
		try{
			//在调用login方法后，SecurityManager会收到AuthenticationToken,并将其发送给已配置的Realm执行必须的检查
			// 每个Realm都能在必要时对提交的AuthenticationTokens作出反应，也就是说在调用login(token)方法时，它会走
			// 到ShiroDbRealm.doGetAuthenticationInfo()方法中
			curUser.login(token);
			return "index";
		}catch(AuthenticationException e){
			//通过处理Shiro的运行时AuthenticationException就可以控制用户登录或密码错误时的情景
			token.clear();
			return "redirect:/";
		}
		
		
	}
}
