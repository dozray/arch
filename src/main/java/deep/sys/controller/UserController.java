package deep.sys.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import deep.fund.rpt.bean.PieData;
import deep.sys.beans.User;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final String TEMPLATE = "Hello %s";
	private final AtomicLong counter = new AtomicLong();
	
	/*
	@RequestMapping("/greeting")
	public @ResponseBody Greeting greeting(
			@RequestParam(value="name",required=false,defaultValue="world") String name){
		return new Greeting(counter.incrementAndGet(),String.format(TEMPLATE, name));
	}
*/
	
	private Map<Long,User> users = new HashMap<Long,User>();	
	public UserController(){
		users.put(0L, new User(2L,"nk","倪凯","123456","18137710001","运营管理部"));	
		users.put(1L, new User(1L,"zzx","朱自献","123456","","集团财务部"));		
		users.put(2L, new User(2L,"zqz","赵群柱","123456","18137710007","集团财务部"));
		users.put(3L, new User(2L,"qqz","齐全中","123456","18737906872","集团财务部"));
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(Model model){
		model.addAttribute("users",users);
		return "user/list";
	}	
	/*开启modelDriven 1
	public String add(Model model){		
		model.addAttribute(new User());
		return "user/add";
	}*/
	//开启modelDriven 2	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(@ModelAttribute("user") User user){			
		return "user/add";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(@Validated User user,BindingResult br){
		if(br.hasErrors()){
			return "user/add";
		}
		users.put(user.getId(), user);
		return "redirect:/user/list";
	}
	
	@RequestMapping(value="/{id}",method=RequestMethod.GET)
	public String show(@PathVariable Long id,Model model){
		model.addAttribute(users.get(id));
		return "user/show";
	}
	@RequestMapping(value="/{id}/update",method=RequestMethod.GET)
	public String update(@PathVariable Long id,Model model){
		model.addAttribute(users.get(id));
		return "user/update";
	}
	
	@RequestMapping(value="/{id}/update",method=RequestMethod.POST)
	public String update(@PathVariable Long id,@Validated User user,BindingResult br){
		if(br.hasErrors()){
			return "user/add";
		}
		users.put(id, user);
		return "redirect:/user/list";
	}
	
	
	@RequestMapping(value="/{id}/delete",method=RequestMethod.GET)
	public String delete(@PathVariable Long id ){
		users.remove(id);
		return "redirect:/user/list";
	}
	
	@RequestMapping(value="/json",method=RequestMethod.GET)	
	public @ResponseBody String testJson(@RequestBody User u){
		System.out.println("get json input from request body annotation");
		System.out.println(u.getUserName());
        return "return ok";
	}	
	
	

}
