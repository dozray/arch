package deep.admin.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import deep.admin.bean.User;
import deep.demo.controller.Greeting;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final String TEMPLATE = "Hello %s";
	private final AtomicLong counter = new AtomicLong();
	
	@RequestMapping("/greeting")
	public @ResponseBody Greeting greeting(
			@RequestParam(value="name",required=false,defaultValue="world") String name){
		return new Greeting(counter.incrementAndGet(),String.format(TEMPLATE, name));
	}
	
	@RequestMapping({"/protal","/jj"})
	public String hello(){
		return "hello";
	}
	
	private Map<String,User> users = new HashMap<String,User>();
	
	
	public UserController(){
		users.put("lyx", new User("多多","123456"));
		users.put("gl", new User("IDG","123456"));
		users.put("lbn", new User("伯南","123456"));
		users.put("zzy", new User("子宜","123456"));		
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
		users.put(user.getUserName(), user);
		return "redirect:/user/list";
	}
}
