package deep.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping({"/hello","/jj"})
	public String hello(){
		return "hello";
	}
	
}
