package deep.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import deep.admin.bean.User;

@Controller
public class LoginController {
	@RequestMapping("/entry")
	public String login(User user){
			return "index";
	}
}
