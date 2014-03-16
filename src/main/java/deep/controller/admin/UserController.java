package deep.controller.admin;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import deep.entity.admin.User;

@Controller
@RequestMapping("/user")
public class UserController {
	private Map<String,User> users = new HashMap<String,User>();
	public UserController(){
		users.put("lyx", new User(1L,"刘英先","123456"));
		users.put("gl", new User(1L,"郭丽","123456"));
		users.put("lbn", new User(1L,"刘伯南","123456"));
		users.put("zzy", new User(1L,"张子宜","123456"));		
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Model model){
		model.addAttribute("users",users);
		return "user/list";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(Model model){
		//开启modelDriven
		model.addAttribute(new User());
		return "user/add";
	}
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(@Validated User user,BindingResult br){
		if(br.hasErrors()){
			return "user/add";
		}
		users.put(user.getName(), user);
		return "redirect:/user/list";
	}
}
