package deep.controller.admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import deep.entity.admin.User;


public class LoginAction extends AbstractController {



	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("logging is starting.........");
		return new ModelAndView("index");
	}
}
