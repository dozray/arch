package deep.sys.controller;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import deep.sys.beans.User;
import deep.sys.svc.UserSvc;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserSvc us ;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model){
		model.addAttribute("users",us.getAll());
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
		us.addUser(user);
		return "redirect:/user/list";
	}
	
	@RequestMapping(value="/{id}",method=RequestMethod.GET)
	public String show(@PathVariable Long id,Model model){
		model.addAttribute(us.get(id));
		return "user/update";
	}
	@RequestMapping(value="/{id}/delete",method=RequestMethod.GET)
	public String del(@PathVariable Long id){
			us.delUser(id);
			return "redirect:/user/list";
	}	
	
	@RequestMapping(value="/{id}/update",method=RequestMethod.GET)
	public String update(@PathVariable Long id,Model model){
		model.addAttribute(us.get(id));
		return "user/update";
	}
	
	@RequestMapping(value="/{id}/update",method=RequestMethod.POST)
	public String update(@PathVariable Long id,@Validated User user,BindingResult br){
		if(br.hasErrors())
			return "user/add";
		us.modiUser(user);
		return "redirect:/user/list";
	}
	
	
	
	private static final String TEMPLATE = "Hello %s";
	private final AtomicLong counter = new AtomicLong();
	
	
	//@RequestMapping("/greeting")
	//public @ResponseBody Greeting greeting(
		//	@RequestParam(value="name",required=false,defaultValue="world") String name){
		//return new Greeting(counter.incrementAndGet(),String.format(TEMPLATE, name));
	//}

	
}
