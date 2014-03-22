package deep.admin.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import deep.admin.bean.ApplicationModel;
import deep.admin.bean.User;
import deep.admin.svc.LoginService;

@Controller
public class LoginController {

	// Create the User object user
	private User user;
	@Autowired
	private LoginService loginService;

	/**
	 * This method will load the login.jsp when the application start
	 * 
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView init() {
		user = new User();
		return new ModelAndView("login", "loginDetails", user);
	}

	/**
	 * This method will be called when the user submits the login details from
	 * login.jsp page. If there is any error it will be displayed on the same
	 * page, if the user is valid then, will be redirected to the success page.
	 * 
	 * @param user
	 * @param br
	 * @param req
	 * @param res
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("loginDetails") User user,
			BindingResult br, HttpServletRequest req, HttpServletResponse res) {
		try {
			// Using Spring ValidationUtils class to check for the empty fields.
			// This will add the error if any in the br object
			ValidationUtils.rejectIfEmptyOrWhitespace(br, "userName",
					"userName", "用户名不能为空");
			ValidationUtils.rejectIfEmptyOrWhitespace(br, "password",
					"password", "密码不能为空");

			if (br.hasErrors()) {
				// returning the errors on same page if any errors..
				return new ModelAndView("login", "loginDetails", user);
			} else {
				// If the user details is validated then redirecting the user to
				// success page.
				// else returning the error message on login page.
				if (loginService.validate(user)) {
					req.getSession().setAttribute("ray_usr", user);
					// Create a redirection view to success page. This will
					// redirect to UserController.
					System.out.println("用户已写入到session中...");
					RedirectView redirectView = new RedirectView("/entry", true);
					return new ModelAndView(redirectView);
				} else {
					br.addError(new ObjectError("Invalid", "登录被拒绝  : 用户名或密码错误"));
					return new ModelAndView("login", "loginDetails", user);
				}
			}
		} catch (Exception e) {
			System.out.println("Exception in LoginController " + e.getMessage());
			e.printStackTrace();
			return new ModelAndView("login", "loginDetails", user);
		}
	}

	@RequestMapping(value = "/entry", method = RequestMethod.GET)
	public ModelAndView entry(HttpServletRequest req, HttpServletResponse res) {
		ApplicationModel applicationModel = new ApplicationModel();
		user = (User) req.getSession().getAttribute("ray_usr");
		applicationModel.setUser(user);
		return new ModelAndView("index", "applicationModel", applicationModel);
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest hsr) {		
		hsr.getSession().setAttribute("ray_usr", null);
		//return "login";
		user = new User();		
		return new ModelAndView("login", "loginDetails", user);
	}
	/*
	 * @RequestMapping(value="/login",method=RequestMethod.GET) public String
	 * login(User user){ return "login"; }
	 * 
	 * 
	 * @RequestMapping(method=RequestMethod.POST) public String
	 * processForm(@Valid User usr,BindingResult result,Map model){ String
	 * userName = "admin"; String password = "admin"; if(result.hasErrors()){
	 * return "/"; }
	 * if(!usr.getUsername().equals(userName)||!usr.getPassword().equals
	 * (password)){ return "loginErr"; } model.put("user", usr); return
	 * "/entry"; }
	 */
}
